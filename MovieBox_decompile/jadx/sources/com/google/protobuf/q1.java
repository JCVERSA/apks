package com.google.protobuf;

import java.io.IOException;

class q1 extends o1 {
    q1() {
    }

    @Override
    void makeImmutable(Object obj) {
        getFromMessage(obj).makeImmutable();
    }

    @Override
    boolean shouldDiscardUnknownFields(h1 h1Var) {
        return false;
    }

    @Override
    public void addFixed32(p1 p1Var, int i10, int i11) {
        p1Var.storeField(WireFormat.makeTag(i10, 5), Integer.valueOf(i11));
    }

    @Override
    public void addFixed64(p1 p1Var, int i10, long j10) {
        p1Var.storeField(WireFormat.makeTag(i10, 1), Long.valueOf(j10));
    }

    @Override
    public void addGroup(p1 p1Var, int i10, p1 p1Var2) {
        p1Var.storeField(WireFormat.makeTag(i10, 3), p1Var2);
    }

    @Override
    public void addLengthDelimited(p1 p1Var, int i10, ByteString byteString) {
        p1Var.storeField(WireFormat.makeTag(i10, 2), byteString);
    }

    @Override
    public void addVarint(p1 p1Var, int i10, long j10) {
        p1Var.storeField(WireFormat.makeTag(i10, 0), Long.valueOf(j10));
    }

    @Override
    public p1 getBuilderFromMessage(Object obj) {
        p1 fromMessage = getFromMessage(obj);
        if (fromMessage != p1.getDefaultInstance()) {
            return fromMessage;
        }
        p1 p1VarNewInstance = p1.newInstance();
        setToMessage(obj, p1VarNewInstance);
        return p1VarNewInstance;
    }

    @Override
    public p1 getFromMessage(Object obj) {
        return ((GeneratedMessageLite) obj).unknownFields;
    }

    @Override
    public int getSerializedSize(p1 p1Var) {
        return p1Var.getSerializedSize();
    }

    @Override
    public int getSerializedSizeAsMessageSet(p1 p1Var) {
        return p1Var.getSerializedSizeAsMessageSet();
    }

    @Override
    public p1 merge(p1 p1Var, p1 p1Var2) {
        if (p1.getDefaultInstance().equals(p1Var2)) {
            return p1Var;
        }
        return p1.getDefaultInstance().equals(p1Var) ? p1.mutableCopyOf(p1Var, p1Var2) : p1Var.mergeFrom(p1Var2);
    }

    @Override
    public p1 newBuilder() {
        return p1.newInstance();
    }

    @Override
    public void setBuilderToMessage(Object obj, p1 p1Var) {
        setToMessage(obj, p1Var);
    }

    @Override
    public void setToMessage(Object obj, p1 p1Var) {
        ((GeneratedMessageLite) obj).unknownFields = p1Var;
    }

    @Override
    public p1 toImmutable(p1 p1Var) {
        p1Var.makeImmutable();
        return p1Var;
    }

    @Override
    public void writeAsMessageSetTo(p1 p1Var, Writer writer) throws IOException {
        p1Var.writeAsMessageSetTo(writer);
    }

    @Override
    public void writeTo(p1 p1Var, Writer writer) throws IOException {
        p1Var.writeTo(writer);
    }
}
