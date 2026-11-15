.class public final Lv20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lze1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv20$f;,
        Lv20$b;,
        Lv20$c;,
        Lv20$d;,
        Lv20$g;,
        Lv20$a;,
        Lv20$e;
    }
.end annotation


# static fields
.field public static final a:Lze1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lv20;

    invoke-direct {v0}, Lv20;-><init>()V

    sput-object v0, Lv20;->a:Lze1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lfa3;)V
    .locals 1

    const-class p0, Lej8;

    sget-object v0, Lv20$e;->a:Lv20$e;

    invoke-interface {p1, p0, v0}, Lfa3;->a(Ljava/lang/Class;Lyb7;)Lfa3;

    const-class p0, Lzx0;

    sget-object v0, Lv20$a;->a:Lv20$a;

    invoke-interface {p1, p0, v0}, Lfa3;->a(Ljava/lang/Class;Lyb7;)Lfa3;

    const-class p0, Lxna;

    sget-object v0, Lv20$g;->a:Lv20$g;

    invoke-interface {p1, p0, v0}, Lfa3;->a(Ljava/lang/Class;Lyb7;)Lfa3;

    const-class p0, Lzp5;

    sget-object v0, Lv20$d;->a:Lv20$d;

    invoke-interface {p1, p0, v0}, Lfa3;->a(Ljava/lang/Class;Lyb7;)Lfa3;

    const-class p0, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped;

    sget-object v0, Lv20$c;->a:Lv20$c;

    invoke-interface {p1, p0, v0}, Lfa3;->a(Ljava/lang/Class;Lyb7;)Lfa3;

    const-class p0, Loi4;

    sget-object v0, Lv20$b;->a:Lv20$b;

    invoke-interface {p1, p0, v0}, Lfa3;->a(Ljava/lang/Class;Lyb7;)Lfa3;

    const-class p0, Lwx9;

    sget-object v0, Lv20$f;->a:Lv20$f;

    invoke-interface {p1, p0, v0}, Lfa3;->a(Ljava/lang/Class;Lyb7;)Lfa3;

    return-void
.end method
