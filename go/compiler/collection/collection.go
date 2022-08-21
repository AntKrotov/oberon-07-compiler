package collection

/*
	BSD 2-Clause License

	Copyright (c) 2018-2019, Anton Krotov, SVI
	All rights reserved.
*/

// Item -- Элемент коллекции. Поле "link" содержит ссылку на свой же тип в
//  качестве продолжения цепочки *
type Item struct {
	// ITEM* = POINTER TO RECORD
	link *Item
}

// Collection -- коллекция содержит "голову" всей цепочки
type Collection struct {
	last *Item
}

// NewCollection -- возвращает новый *Collecton
func NewCollection() *Collection {
	return &Collection{}
}

/* Push -- добавляет в коллецию элемент.
Элемент голову коллекции пристраивает себе в хвост,
а сам становится голвоой коллекции. Поэтому элемент
НЕ МОЖЕТ быть NIL. #TODO: не хватает проверок на то, что коллекция
не NIL и элемент не NIL. Ошибка вываливается ВО ВРЕМЯ РАБОТЫ. */
func (sf *Collection) Push(item *Item) {
	item.link = sf.last
	sf.last = item
}

// Pop -- вытесняет "башку" коллекции
func (sf *Collection) Pop() *Item {
	item := sf.last
	if item != nil {
		sf.last = item.link
	}
	return item
}
