package com.transsion.audiotagger.tag.id3;

import com.transsion.audiotagger.tag.datatype.AbstractDataType;
import com.transsion.audiotagger.tag.datatype.DataTypes;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.ListIterator;

public abstract class AbstractTagFrameBody extends AbstractTagItem {
    private AbstractTagFrame header;
    protected ArrayList<AbstractDataType> objectList = new ArrayList<>();

    public AbstractTagFrameBody() {
        setupObjectList();
    }

    public void createStructure() {
    }

    @Override
    public boolean equals(Object obj) {
        return (obj instanceof AbstractTagFrameBody) && this.objectList.equals(((AbstractTagFrameBody) obj).objectList) && super.equals(obj);
    }

    public String getBriefDescription() {
        String str = "";
        for (AbstractDataType abstractDataType : this.objectList) {
            if (abstractDataType.toString() != null && abstractDataType.toString().length() > 0) {
                str = str + abstractDataType.getIdentifier() + "=\"" + abstractDataType.toString() + "\"; ";
            }
        }
        return str;
    }

    public AbstractTagFrame getHeader() {
        return this.header;
    }

    public final String getLongDescription() {
        String str = "";
        for (AbstractDataType abstractDataType : this.objectList) {
            if (abstractDataType.toString() != null && abstractDataType.toString().length() > 0) {
                str = str + abstractDataType.getIdentifier() + " = " + abstractDataType.toString() + "\n";
            }
        }
        return str;
    }

    public final AbstractDataType getObject(String str) {
        ListIterator<AbstractDataType> listIterator = this.objectList.listIterator();
        while (listIterator.hasNext()) {
            AbstractDataType next = listIterator.next();
            if (next.getIdentifier().equals(str)) {
                return next;
            }
        }
        return null;
    }

    public final Object getObjectValue(String str) {
        return getObject(str).getValue();
    }

    @Override
    public int getSize() {
        ListIterator<AbstractDataType> listIterator = this.objectList.listIterator();
        int size = 0;
        while (listIterator.hasNext()) {
            size += listIterator.next().getSize();
        }
        return size;
    }

    public final byte getTextEncoding() {
        AbstractDataType object = getObject(DataTypes.OBJ_TEXT_ENCODING);
        if (object != null) {
            return ((Long) object.getValue()).byteValue();
        }
        return (byte) 0;
    }

    public String getUserFriendlyValue() {
        return toString();
    }

    @Override
    public boolean isSubsetOf(Object obj) {
        if (!(obj instanceof AbstractTagFrameBody)) {
            return false;
        }
        ArrayList<AbstractDataType> arrayList = ((AbstractTagFrameBody) obj).objectList;
        for (AbstractDataType abstractDataType : this.objectList) {
            if (abstractDataType.getValue() != null && !arrayList.contains(abstractDataType)) {
                return false;
            }
        }
        return true;
    }

    public Iterator iterator() {
        return this.objectList.iterator();
    }

    public void setHeader(AbstractTagFrame abstractTagFrame) {
        this.header = abstractTagFrame;
    }

    public final void setObjectValue(String str, Object obj) {
        ListIterator<AbstractDataType> listIterator = this.objectList.listIterator();
        while (listIterator.hasNext()) {
            AbstractDataType next = listIterator.next();
            if (next.getIdentifier().equals(str)) {
                next.setValue(obj);
            }
        }
    }

    public final void setTextEncoding(byte b) {
        setObjectValue(DataTypes.OBJ_TEXT_ENCODING, Byte.valueOf(b));
    }

    public abstract void setupObjectList();

    public String toString() {
        return getBriefDescription();
    }

    public AbstractTagFrameBody(AbstractTagFrameBody abstractTagFrameBody) {
        for (int i = 0; i < abstractTagFrameBody.objectList.size(); i++) {
            AbstractDataType abstractDataType = (AbstractDataType) ID3Tags.copyObject(abstractTagFrameBody.objectList.get(i));
            abstractDataType.setBody(this);
            this.objectList.add(abstractDataType);
        }
    }
}
