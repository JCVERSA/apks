package com.hunantv.media.player.d.a;

import android.opengl.GLES20;
import android.opengl.GLException;
import com.hunantv.media.player.pragma.DebugLog;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;

public class a {
    public static int a(int i, int i2) throws GLException {
        int iGlCreateProgram = GLES20.glCreateProgram();
        if (iGlCreateProgram == 0) {
            throw new RuntimeException("Could not create program");
        }
        GLES20.glAttachShader(iGlCreateProgram, i);
        GLES20.glAttachShader(iGlCreateProgram, i2);
        GLES20.glLinkProgram(iGlCreateProgram);
        int[] iArr = new int[1];
        GLES20.glGetProgramiv(iGlCreateProgram, 35714, iArr, 0);
        if (iArr[0] == 1) {
            return iGlCreateProgram;
        }
        GLES20.glDeleteProgram(iGlCreateProgram);
        throw new RuntimeException("Could not link program");
    }

    public static FloatBuffer b(float[] fArr) {
        FloatBuffer floatBufferAsFloatBuffer = ByteBuffer.allocateDirect(fArr.length * 4).order(ByteOrder.nativeOrder()).asFloatBuffer();
        floatBufferAsFloatBuffer.put(fArr).position(0);
        return floatBufferAsFloatBuffer;
    }

    public static int a(String str, int i) {
        int[] iArr = new int[1];
        int iGlCreateShader = GLES20.glCreateShader(i);
        GLES20.glShaderSource(iGlCreateShader, str);
        GLES20.glCompileShader(iGlCreateShader);
        GLES20.glGetShaderiv(iGlCreateShader, 35713, iArr, 0);
        if (iArr[0] != 0) {
            return iGlCreateShader;
        }
        DebugLog.e("EglUtil", "Compilation\n" + GLES20.glGetShaderInfoLog(iGlCreateShader) + "throw it.");
        return 0;
    }

    public static int a(FloatBuffer floatBuffer) {
        int[] iArr = new int[1];
        GLES20.glGenBuffers(1, iArr, 0);
        a(iArr[0], floatBuffer);
        return iArr[0];
    }

    public static int a(float[] fArr) {
        return a(b(fArr));
    }

    public static void a(int i, int i2, int i3) {
        GLES20.glTexParameterf(i, 10240, i2);
        GLES20.glTexParameterf(i, 10241, i3);
        GLES20.glTexParameteri(i, 10242, 33071);
        GLES20.glTexParameteri(i, 10243, 33071);
    }

    public static void a(int i, FloatBuffer floatBuffer) {
        GLES20.glBindBuffer(34962, i);
        GLES20.glBufferData(34962, floatBuffer.capacity() * 4, floatBuffer, 35044);
        GLES20.glBindBuffer(34962, 0);
    }
}
