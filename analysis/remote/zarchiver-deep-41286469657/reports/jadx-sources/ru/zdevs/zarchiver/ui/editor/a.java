package ru.zdevs.zarchiver.ui.editor;

import android.icu.text.BreakIterator;

public abstract class a {

    public final ru.zdevs.zarchiver.ui.editor.b.C0037b f1852a = new ru.zdevs.zarchiver.ui.editor.b.C0037b();

    public static class C0036a extends a {

        public final BreakIterator f1853b = BreakIterator.getWordInstance();

        @Override
        public final int a() {
            return this.f1853b.first();
        }

        @Override
        public final int b() {
            return this.f1853b.next();
        }

        @Override
        public final void c(ru.zdevs.zarchiver.ui.editor.b.C0037b c0037b) {
            this.f1853b.setText(c0037b);
        }
    }

    public static class b extends a {

        public final java.text.BreakIterator f1854b = java.text.BreakIterator.getWordInstance();

        @Override
        public final int a() {
            return this.f1854b.first();
        }

        @Override
        public final int b() {
            return this.f1854b.next();
        }

        @Override
        public final void c(ru.zdevs.zarchiver.ui.editor.b.C0037b c0037b) {
            this.f1854b.setText(c0037b);
        }
    }

    public abstract int a();

    public abstract int b();

    public abstract void c(ru.zdevs.zarchiver.ui.editor.b.C0037b c0037b);
}
