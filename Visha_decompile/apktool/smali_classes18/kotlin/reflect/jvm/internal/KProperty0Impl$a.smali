.class public final Lkotlin/reflect/jvm/internal/KProperty0Impl$a;
.super Lkotlin/reflect/jvm/internal/KPropertyImpl$Getter;
.source "SourceFile"

# interfaces
.implements Lbf5$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/KProperty0Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final j:Lkotlin/reflect/jvm/internal/KProperty0Impl;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/KProperty0Impl;)V
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$Getter;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KProperty0Impl$a;->j:Lkotlin/reflect/jvm/internal/KProperty0Impl;

    return-void
.end method


# virtual methods
.method public bridge synthetic E()Lkotlin/reflect/jvm/internal/KPropertyImpl;
    .locals 0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KProperty0Impl$a;->G()Lkotlin/reflect/jvm/internal/KProperty0Impl;

    move-result-object p0

    return-object p0
.end method

.method public G()Lkotlin/reflect/jvm/internal/KProperty0Impl;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/KProperty0Impl$a;->j:Lkotlin/reflect/jvm/internal/KProperty0Impl;

    return-object p0
.end method

.method public bridge synthetic h()Laf5;
    .locals 0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KProperty0Impl$a;->G()Lkotlin/reflect/jvm/internal/KProperty0Impl;

    move-result-object p0

    return-object p0
.end method

.method public invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KProperty0Impl$a;->G()Lkotlin/reflect/jvm/internal/KProperty0Impl;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KProperty0Impl;->K()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
