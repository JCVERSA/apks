package com.google.firebase.components;

import defpackage.zb1;
import java.util.Arrays;
import java.util.List;

public class DependencyCycleException extends DependencyException {
    private final List<zb1> componentsInCycle;

    public DependencyCycleException(List<zb1> list) {
        super("Dependency cycle detected: " + Arrays.toString(list.toArray()));
        this.componentsInCycle = list;
    }

    public List<zb1> getComponentsInCycle() {
        return this.componentsInCycle;
    }
}
