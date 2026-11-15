package org.jsoup.nodes;

import defpackage.dx7;

public abstract class h {
    public static Document.OutputSettings a(g gVar) {
        Document documentK = gVar.K();
        if (documentK == null) {
            documentK = new Document("");
        }
        return documentK.x1();
    }

    public static dx7 b(g gVar) {
        Document documentK = gVar.K();
        return (documentK == null || documentK.y1() == null) ? new dx7(new org.jsoup.parser.a()) : documentK.y1();
    }
}
