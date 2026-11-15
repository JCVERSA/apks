package com.hunantv.media.player.d.a.a;

import android.content.Context;
import android.opengl.GLES20;
import java.io.IOException;

public class b extends a {
    private float k;
    private float l;

    public b(Context context) throws IOException {
        super(context, "unsharp_edge_vertex.sh", "unsharp_edge_compare_fragment.sh");
        this.k = 0.8f;
        this.l = 1.05f;
    }

    @Override
    public void d() {
        GLES20.glUniform1f(a("texelWidthOffset"), (float) (1.0d / ((double) this.d)));
        GLES20.glUniform1f(a("texelHeightOffset"), (float) (1.0d / ((double) this.e)));
        GLES20.glUniform1f(a("lumaContrastRatio"), this.l);
        GLES20.glUniform1f(a("unsharpRatio"), this.k);
    }

    @Override
    public String g() {
        return "UnSharpEdge";
    }

    @Override
    public int h() {
        return 2;
    }
}
