package org.mozilla.javascript;

import java.util.Iterator;

public class g implements SlotMap {
    public SlotMap b;

    public g(int i) {
        if (i > 2000) {
            this.b = new HashSlotMap();
        } else {
            this.b = new EmbeddedSlotMap();
        }
    }

    @Override
    public void addSlot(ScriptableObject.Slot slot) {
        b();
        this.b.addSlot(slot);
    }

    public void b() {
        SlotMap slotMap = this.b;
        if (!(slotMap instanceof EmbeddedSlotMap) || slotMap.size() < 2000) {
            return;
        }
        HashSlotMap hashSlotMap = new HashSlotMap();
        Iterator<ScriptableObject.Slot> it = this.b.iterator();
        while (it.hasNext()) {
            hashSlotMap.addSlot(it.next());
        }
        this.b = hashSlotMap;
    }

    public int c() {
        return this.b.size();
    }

    public long f() {
        return 0L;
    }

    @Override
    public ScriptableObject.Slot get(Object obj, int i, ScriptableObject.SlotAccess slotAccess) {
        if (slotAccess != ScriptableObject.SlotAccess.QUERY) {
            b();
        }
        return this.b.get(obj, i, slotAccess);
    }

    public void i(long j) {
    }

    @Override
    public boolean isEmpty() {
        return this.b.isEmpty();
    }

    @Override
    public Iterator<ScriptableObject.Slot> iterator() {
        return this.b.iterator();
    }

    @Override
    public ScriptableObject.Slot query(Object obj, int i) {
        return this.b.query(obj, i);
    }

    @Override
    public void remove(Object obj, int i) {
        this.b.remove(obj, i);
    }

    @Override
    public int size() {
        return this.b.size();
    }
}
