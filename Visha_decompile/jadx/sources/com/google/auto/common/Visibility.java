package com.google.auto.common;

import com.google.common.collect.Ordering;
import defpackage.hb3;
import defpackage.xd8;
import java.util.Set;
import javax.lang.model.element.Element;
import javax.lang.model.element.ElementKind;
import javax.lang.model.element.Modifier;

public enum Visibility {
    PRIVATE,
    DEFAULT,
    PROTECTED,
    PUBLIC;

    private static final ElementKind MODULE = (ElementKind) hb3.b(ElementKind.class, "MODULE").orNull();

    public static Visibility effectiveVisibilityOfElement(Element element) {
        xd8.o(element);
        Visibility visibility = PUBLIC;
        while (element != null) {
            visibility = (Visibility) Ordering.natural().min(visibility, ofElement(element));
            element = element.getEnclosingElement();
        }
        return visibility;
    }

    public static Visibility ofElement(Element element) {
        xd8.o(element);
        if (element.getKind().equals(ElementKind.PACKAGE) || element.getKind().equals(MODULE)) {
            return PUBLIC;
        }
        Set modifiers = element.getModifiers();
        if (modifiers.contains(Modifier.PRIVATE)) {
            return PRIVATE;
        }
        if (modifiers.contains(Modifier.PROTECTED)) {
            return PROTECTED;
        }
        return modifiers.contains(Modifier.PUBLIC) ? PUBLIC : DEFAULT;
    }
}
