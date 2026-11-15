package org.mozilla.javascript;

import java.util.Iterator;
import java.util.LinkedHashMap;

public class HashSlotMap implements SlotMap {
    private final LinkedHashMap<Object, ScriptableObject.Slot> map = new LinkedHashMap<>();

    public static class a {
        public static final int[] a;

        static {
            int[] iArr = new int[ScriptableObject.SlotAccess.values().length];
            a = iArr;
            try {
                iArr[ScriptableObject.SlotAccess.QUERY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[ScriptableObject.SlotAccess.MODIFY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[ScriptableObject.SlotAccess.MODIFY_CONST.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[ScriptableObject.SlotAccess.MODIFY_GETTER_SETTER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                a[ScriptableObject.SlotAccess.CONVERT_ACCESSOR_TO_DATA.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    private ScriptableObject.Slot createSlot(Object obj, int i, Object obj2, ScriptableObject.SlotAccess slotAccess) {
        ScriptableObject.Slot slot;
        ScriptableObject.Slot slot2 = this.map.get(obj2);
        if (slot2 == null) {
            ScriptableObject.Slot getterSlot = slotAccess == ScriptableObject.SlotAccess.MODIFY_GETTER_SETTER ? new ScriptableObject.GetterSlot(obj, i, 0) : new ScriptableObject.Slot(obj, i, 0);
            if (slotAccess == ScriptableObject.SlotAccess.MODIFY_CONST) {
                getterSlot.setAttributes(13);
            }
            addSlot(getterSlot);
            return getterSlot;
        }
        if (slotAccess == ScriptableObject.SlotAccess.MODIFY_GETTER_SETTER && !(slot2 instanceof ScriptableObject.GetterSlot)) {
            slot = new ScriptableObject.GetterSlot(obj2, slot2.indexOrHash, slot2.getAttributes());
        } else {
            if (slotAccess != ScriptableObject.SlotAccess.CONVERT_ACCESSOR_TO_DATA || !(slot2 instanceof ScriptableObject.GetterSlot)) {
                if (slotAccess == ScriptableObject.SlotAccess.MODIFY_CONST) {
                    return null;
                }
                return slot2;
            }
            slot = new ScriptableObject.Slot(obj2, slot2.indexOrHash, slot2.getAttributes());
        }
        slot.value = slot2.value;
        this.map.put(obj2, slot);
        return slot;
    }

    @Override
    public void addSlot(ScriptableObject.Slot slot) {
        Object objValueOf = slot.name;
        if (objValueOf == null) {
            objValueOf = String.valueOf(slot.indexOrHash);
        }
        this.map.put(objValueOf, slot);
    }

    @Override
    public ScriptableObject.Slot get(Object obj, int i, ScriptableObject.SlotAccess slotAccess) {
        Object objValueOf = obj == null ? String.valueOf(i) : obj;
        ScriptableObject.Slot slot = this.map.get(objValueOf);
        int i2 = a.a[slotAccess.ordinal()];
        if (i2 == 1) {
            return slot;
        }
        if (i2 == 2 || i2 == 3) {
            if (slot != null) {
                return slot;
            }
        } else if (i2 != 4) {
            if (i2 == 5 && !(slot instanceof ScriptableObject.GetterSlot)) {
                return slot;
            }
        } else if (slot instanceof ScriptableObject.GetterSlot) {
            return slot;
        }
        return createSlot(obj, i, objValueOf, slotAccess);
    }

    @Override
    public boolean isEmpty() {
        return this.map.isEmpty();
    }

    @Override
    public Iterator<ScriptableObject.Slot> iterator() {
        return this.map.values().iterator();
    }

    @Override
    public ScriptableObject.Slot query(Object obj, int i) {
        if (obj == null) {
            obj = String.valueOf(i);
        }
        return this.map.get(obj);
    }

    @Override
    public void remove(Object obj, int i) {
        Object objValueOf = obj == null ? String.valueOf(i) : obj;
        ScriptableObject.Slot slot = this.map.get(objValueOf);
        if (slot != null) {
            if ((slot.getAttributes() & 4) == 0) {
                this.map.remove(objValueOf);
            } else if (Context.getContext().isStrictMode()) {
                throw ScriptRuntime.typeError1("msg.delete.property.with.configurable.false", obj);
            }
        }
    }

    @Override
    public int size() {
        return this.map.size();
    }
}
