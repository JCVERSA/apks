package com.mgmi.db.dao3;

import com.transsion.videodownloader.model.Video;
import defpackage.qwd;
import java.io.File;

public class c {
    public Long a;
    public String b;
    public String c;
    public long d;
    public long e;
    public Integer f;
    public long g;
    public Integer h;
    public String i;

    public c() {
    }

    public Long a() {
        return this.a;
    }

    public String b() {
        return this.b;
    }

    public String c() {
        return this.c;
    }

    public Long d() {
        return Long.valueOf(this.d);
    }

    public Long e() {
        return Long.valueOf(this.e);
    }

    public Integer f() {
        return this.f;
    }

    public Long g() {
        return Long.valueOf(this.g);
    }

    public Integer h() {
        return this.h;
    }

    public String i() {
        return this.i;
    }

    public boolean j() {
        long j = this.d;
        if (0 == j) {
            return false;
        }
        long j2 = this.e;
        return 0 != j2 && j == j2;
    }

    public String toString() {
        return "FileDownloadInfo{id=" + this.a + ", fileUrl='" + this.b + "', filePath='" + this.c + "', completeSize=" + this.d + ", totalSize=" + this.e + ", status=" + this.f + ", operateTime=" + this.g + ", speed=" + this.h + ", uuid='" + this.i + "'}";
    }

    public c(Long l, String str, String str2, long j, long j2, Integer num, long j3, Integer num2, String str3) {
        this.a = l;
        this.b = str;
        this.c = str2;
        this.d = j;
        this.e = j2;
        this.f = num;
        this.g = j3;
        this.h = num2;
        this.i = str3;
    }

    public void a(Long l) {
        this.a = l;
    }

    public void b(String str) {
        this.c = str;
    }

    public void c(String str) {
        this.i = str;
    }

    public String d(String str) {
        String str2 = qwd.c(this.b) + Video.SUFFIX.SUFFIX_MP4;
        String str3 = File.separator;
        if (str.endsWith(str3)) {
            return str;
        }
        return str.concat(str3) + str2;
    }

    public void a(String str) {
        this.b = str;
    }

    public void b(Integer num) {
        this.h = num;
    }

    public void c(long j) {
        this.g = j;
    }

    public void a(Integer num) {
        this.f = num;
    }

    public void b(long j) {
        this.e = j;
    }

    public void a(long j) {
        this.d = j;
    }
}
