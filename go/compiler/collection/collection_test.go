package collection

import (
	"testing"
)

/*
	Тест для коллекций
*/

// Тестер для коллекции
type tester struct {
	t    *testing.T
	col  *Collection
	item *Item
}

func TestCollection(t *testing.T) {
	test := &tester{
		t: t,
	}
	test.create()
	test.push()
	test.pop()
}

// Выталкивание элимента
func (sf *tester) pop() {
	sf.t.Logf("pop()\n")
	item := sf.col.Pop()
	if item != sf.item {
		sf.t.Errorf("pop(): item!=sf.item\n")
	}
	if sf.col.last != nil {
		sf.t.Logf("push(): last!=nil\n")
	}
}

// Создание элемента
func (sf *tester) push() {
	sf.t.Logf("push()\n")
	sf.item = &Item{}
	sf.col.Push(sf.item)
	if sf.col.last == nil {
		sf.t.Logf("push(): last==nil\n")
	}
	if sf.col.last != sf.item {
		sf.t.Logf("push(): last!=item\n")
	}
	if sf.col.last.link != nil {
		sf.t.Logf("push(): link!=nil\n")
	}
}

// Создание коллекции
func (sf *tester) create() {
	sf.t.Logf("create()\n")
	sf.col = NewCollection()
	if sf.col == nil {
		sf.t.Errorf("create(): collection==nil")
	}
}
