.class public final Llx0;
.super Ljava/lang/ClassValue;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/ClassValue;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Llw6;
    .locals 0

    const-string p0, "type"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Llw6;

    invoke-direct {p0}, Llw6;-><init>()V

    return-object p0
.end method

.method public bridge synthetic computeValue(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Llx0;->a(Ljava/lang/Class;)Llw6;

    move-result-object p0

    return-object p0
.end method
