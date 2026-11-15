package com.facebook.ads.redexgen.core;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public final class C1658di implements SJ {
    public final Map<String, Set<String>> A00 = new HashMap();

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 4 out of bounds for length 4
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:147)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:122)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:656)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:38)
     */
    @Override
    public final synchronized boolean AAD(String str, String str2) {
        Set<String> set;
        set = this.A00.get(str2);
        return set != null && set.contains(str);
    }

    @Override
    public final synchronized void A4r(String str) {
        this.A00.remove(str);
    }

    @Override
    public final synchronized void AIU(String str, String str2) {
        Set<String> hashSet = this.A00.get(str2);
        if (hashSet == null) {
            hashSet = new HashSet<>();
            this.A00.put(str2, hashSet);
        }
        hashSet.add(str);
    }
}
