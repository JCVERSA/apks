package com.mgmi.net.bean;

public class PlusSdkBootDataItem<T> extends BootDataItem {
    public BootAdBean bootAdBean;
    public T nativeADDataRef;
    private boolean secondParsed;

    public PlusSdkBootDataItem(BootAdBean bootAdBean) {
        this.bootAdBean = bootAdBean;
    }

    public boolean isSecondParsed() {
        return this.secondParsed;
    }

    public void setNativeADDataRef(T t) {
        this.nativeADDataRef = t;
    }

    public void setSecondParsed(boolean z) {
        this.secondParsed = z;
    }
}
