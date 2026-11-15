package com.facebook.ads.redexgen.core;

public class C0999Jc extends AbstractRunnableC1322Vt {
    public static String[] A02 = {"LRx", "usnMdIZ0FvkqiUZevNTWLktoEg5pLAC7", "DXfpDntuFVUaB3iAC9xpEYaXMcysh68b", "KPagnGwIHNxRQqHn90bhIF", "OiThbZ96vqk0YqBrWrlbCPGqj", "zO4ylzajSSdkzzLOGvXbKRrkPLlgkkF6", "2QDKj7W9IPpyibsxcOZVzQQBEZY6mcrJ", "j8cJ2BFMipeHC45SmF0VkU4zcd"};
    public final JU A00;
    public final boolean A01;

    public C0999Jc(JU ju, boolean z) {
        this.A00 = ju;
        this.A01 = z;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x003e  */
    @Override
    public final void A07() {
        boolean z;
        AbstractC1365Xm abstractC1365XmA0C = this.A00.A0N.A0C();
        if (abstractC1365XmA0C != null) {
            if (this.A01) {
                z = false;
            } else {
                boolean zA0B = abstractC1365XmA0C.A0B();
                if (A02[4].length() != 25) {
                    throw new RuntimeException();
                }
                A02[4] = "GjOMFYo3T7nhomgErVvGRCVPy";
                if (zA0B) {
                    z = false;
                } else {
                    z = true;
                }
            }
            abstractC1365XmA0C.setPageDetailsVisible(z);
            abstractC1365XmA0C.setToolbarActionMode(this.A00.getCloseButtonStyle());
        }
    }
}
