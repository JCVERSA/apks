.class public abstract Lax8;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lt74;

.field public static final b:Lt74;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lax8$a;

    invoke-direct {v0}, Lax8$a;-><init>()V

    sput-object v0, Lax8;->a:Lt74;

    new-instance v0, Lax8$b;

    invoke-direct {v0}, Lax8$b;-><init>()V

    sput-object v0, Lax8;->b:Lt74;

    return-void
.end method

.method public static a(Lmc7;)Lyk5;
    .locals 1

    sget-object v0, Lax8;->a:Lt74;

    invoke-static {p0, v0}, Lzw8;->b(Lmc7;Lt74;)Lyk5;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lmc7;)Lyk5;
    .locals 1

    sget-object v0, Lax8;->b:Lt74;

    invoke-static {p0, v0}, Lzw8;->b(Lmc7;Lt74;)Lyk5;

    move-result-object p0

    return-object p0
.end method
