package com.google.protobuf;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

final class m1 implements q0 {
    private final int[] checkInitialized;
    private final s0 defaultInstance;
    private final s[] fields;
    private final boolean messageSetWireFormat;
    private final ProtoSyntax syntax;

    m1(ProtoSyntax protoSyntax, boolean z10, int[] iArr, s[] sVarArr, Object obj) {
        this.syntax = protoSyntax;
        this.messageSetWireFormat = z10;
        this.checkInitialized = iArr;
        this.fields = sVarArr;
        this.defaultInstance = (s0) y.checkNotNull(obj, "defaultInstance");
    }

    public static a newBuilder() {
        return new a();
    }

    public int[] getCheckInitialized() {
        return this.checkInitialized;
    }

    @Override
    public s0 getDefaultInstance() {
        return this.defaultInstance;
    }

    public s[] getFields() {
        return this.fields;
    }

    @Override
    public ProtoSyntax getSyntax() {
        return this.syntax;
    }

    @Override
    public boolean isMessageSetWireFormat() {
        return this.messageSetWireFormat;
    }

    public static a newBuilder(int i10) {
        return new a(i10);
    }

    public static final class a {
        private int[] checkInitialized;
        private Object defaultInstance;
        private final List<s> fields;
        private boolean messageSetWireFormat;
        private ProtoSyntax syntax;
        private boolean wasBuilt;

        public a() {
            this.checkInitialized = null;
            this.fields = new ArrayList();
        }

        public m1 build() {
            if (this.wasBuilt) {
                throw new IllegalStateException("Builder can only build once");
            }
            if (this.syntax == null) {
                throw new IllegalStateException("Must specify a proto syntax");
            }
            this.wasBuilt = true;
            Collections.sort(this.fields);
            return new m1(this.syntax, this.messageSetWireFormat, this.checkInitialized, (s[]) this.fields.toArray(new s[0]), this.defaultInstance);
        }

        public void withCheckInitialized(int[] iArr) {
            this.checkInitialized = iArr;
        }

        public void withDefaultInstance(Object obj) {
            this.defaultInstance = obj;
        }

        public void withField(s sVar) {
            if (this.wasBuilt) {
                throw new IllegalStateException("Builder can only build once");
            }
            this.fields.add(sVar);
        }

        public void withMessageSetWireFormat(boolean z10) {
            this.messageSetWireFormat = z10;
        }

        public void withSyntax(ProtoSyntax protoSyntax) {
            this.syntax = (ProtoSyntax) y.checkNotNull(protoSyntax, "syntax");
        }

        public a(int i10) {
            this.checkInitialized = null;
            this.fields = new ArrayList(i10);
        }
    }
}
