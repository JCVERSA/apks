.class public final Lmqi;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lmqi;

.field public static final c:Lmqi;


# instance fields
.field public final a:Liqi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lmqi;

    new-instance v1, Lnqi;

    invoke-direct {v1}, Lnqi;-><init>()V

    invoke-direct {v0, v1}, Lmqi;-><init>(Luqi;)V

    sput-object v0, Lmqi;->b:Lmqi;

    new-instance v0, Lmqi;

    new-instance v1, Lrqi;

    invoke-direct {v1}, Lrqi;-><init>()V

    invoke-direct {v0, v1}, Lmqi;-><init>(Luqi;)V

    sput-object v0, Lmqi;->c:Lmqi;

    new-instance v0, Lmqi;

    new-instance v1, Ltqi;

    invoke-direct {v1}, Ltqi;-><init>()V

    invoke-direct {v0, v1}, Lmqi;-><init>(Luqi;)V

    new-instance v0, Lmqi;

    new-instance v1, Lsqi;

    invoke-direct {v1}, Lsqi;-><init>()V

    invoke-direct {v0, v1}, Lmqi;-><init>(Luqi;)V

    new-instance v0, Lmqi;

    new-instance v1, Loqi;

    invoke-direct {v1}, Loqi;-><init>()V

    invoke-direct {v0, v1}, Lmqi;-><init>(Luqi;)V

    new-instance v0, Lmqi;

    new-instance v1, Lqqi;

    invoke-direct {v1}, Lqqi;-><init>()V

    invoke-direct {v0, v1}, Lmqi;-><init>(Luqi;)V

    new-instance v0, Lmqi;

    new-instance v1, Lpqi;

    invoke-direct {v1}, Lpqi;-><init>()V

    invoke-direct {v0, v1}, Lmqi;-><init>(Luqi;)V

    return-void
.end method

.method public constructor <init>(Luqi;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lugi;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, "The Android Project"

    const-string v2, "java.vendor"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lfqi;

    invoke-direct {v0, p1, v1}, Lfqi;-><init>(Luqi;Ljqi;)V

    :goto_0
    iput-object v0, p0, Lmqi;->a:Liqi;

    return-void

    :cond_0
    new-instance v0, Lgqi;

    invoke-direct {v0, p1, v1}, Lgqi;-><init>(Luqi;Ljqi;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lhqi;

    invoke-direct {v0, p1, v1}, Lhqi;-><init>(Luqi;Ljqi;)V

    goto :goto_0
.end method

.method public static varargs b([Ljava/lang/String;)Ljava/util/List;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    aget-object v2, p0, v1

    invoke-static {v2}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lmqi;->a:Liqi;

    invoke-interface {p0, p1}, Liqi;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
