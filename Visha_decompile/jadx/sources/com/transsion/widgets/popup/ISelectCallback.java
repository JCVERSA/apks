package com.transsion.widgets.popup;

import java.util.List;

public interface ISelectCallback<T> {
    default void selectCallback(T t) {
    }

    default void selectOnDismissMultiChoice(List<T> list) {
    }

    default void selectOnDismissSingleChoice(T t) {
    }

    default void selectCallback(List<T> list) {
    }
}
