package com.mbridge.msdk.tracker;

import java.io.Serializable;
import java.util.UUID;
import org.json.JSONObject;

public class e implements Serializable {

    private String f37669a;

    private JSONObject f37672d;

    private h f37677i;

    private int f37670b = 0;

    private int f37671c = 0;

    private long f37675g = 0;

    private long f37676h = 604800000;

    private boolean f37678j = false;

    private boolean f37679k = false;

    private long f37674f = System.currentTimeMillis();

    private String f37673e = UUID.randomUUID().toString();

    public e(String str) {
        this.f37669a = str;
    }

    public void a(int i10) {
        this.f37671c = i10;
    }

    public String b() {
        return this.f37669a;
    }

    public int c() {
        return this.f37671c;
    }

    public JSONObject d() {
        JSONObject jSONObject = this.f37672d;
        if (jSONObject != null) {
            return jSONObject;
        }
        JSONObject jSONObject2 = new JSONObject();
        this.f37672d = jSONObject2;
        return jSONObject2;
    }

    public h e() {
        return this.f37677i;
    }

    public long f() {
        return this.f37676h;
    }

    public long g() {
        return this.f37674f;
    }

    public int h() {
        return this.f37670b;
    }

    public String i() {
        return this.f37673e;
    }

    public boolean j() {
        return this.f37679k;
    }

    public boolean k() {
        return this.f37678j;
    }

    public void a(JSONObject jSONObject) {
        this.f37672d = jSONObject;
    }

    public void b(int i10) {
        this.f37670b = i10;
    }

    public void c(long j10) {
        this.f37674f = j10;
    }

    void a(String str) {
        this.f37673e = str;
    }

    void b(long j10) {
        this.f37676h = j10;
    }

    public long a() {
        return this.f37675g;
    }

    public void a(long j10) {
        this.f37675g = j10;
    }

    public void a(h hVar) {
        this.f37677i = hVar;
    }

    public void a(boolean z10) {
        this.f37679k = z10;
    }
}
