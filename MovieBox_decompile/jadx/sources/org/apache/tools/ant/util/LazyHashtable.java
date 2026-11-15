package org.apache.tools.ant.util;

import java.util.Enumeration;
import java.util.Hashtable;

public class LazyHashtable extends Hashtable {
    protected boolean initAllDone = false;

    @Override
    public boolean contains(Object obj) {
        initAll();
        return super.contains(obj);
    }

    @Override
    public boolean containsKey(Object obj) {
        initAll();
        return super.containsKey(obj);
    }

    @Override
    public boolean containsValue(Object obj) {
        return contains(obj);
    }

    @Override
    public Enumeration elements() {
        initAll();
        return super.elements();
    }

    protected void initAll() {
        if (this.initAllDone) {
            return;
        }
        this.initAllDone = true;
    }

    @Override
    public boolean isEmpty() {
        initAll();
        return super.isEmpty();
    }

    @Override
    public Enumeration keys() {
        initAll();
        return super.keys();
    }

    @Override
    public int size() {
        initAll();
        return super.size();
    }
}
