.class public abstract Lu18;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/concurrent/Executor;

.field public static final b:Lyq8;

.field public static final c:Lgl0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "java.vm.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v1, 0x0

    const-string v2, "RoboVM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "Dalvik"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sput-object v1, Lu18;->a:Ljava/util/concurrent/Executor;

    new-instance v0, Lyq8$b;

    invoke-direct {v0}, Lyq8$b;-><init>()V

    sput-object v0, Lu18;->b:Lyq8;

    new-instance v0, Lgl0$a;

    invoke-direct {v0}, Lgl0$a;-><init>()V

    sput-object v0, Lu18;->c:Lgl0;

    goto :goto_0

    :cond_0
    new-instance v0, Ltb;

    invoke-direct {v0}, Ltb;-><init>()V

    sput-object v0, Lu18;->a:Ljava/util/concurrent/Executor;

    new-instance v0, Lyq8$a;

    invoke-direct {v0}, Lyq8$a;-><init>()V

    sput-object v0, Lu18;->b:Lyq8;

    new-instance v0, Lgl0$a;

    invoke-direct {v0}, Lgl0$a;-><init>()V

    sput-object v0, Lu18;->c:Lgl0;

    goto :goto_0

    :cond_1
    sput-object v1, Lu18;->a:Ljava/util/concurrent/Executor;

    new-instance v0, Lyq8;

    invoke-direct {v0}, Lyq8;-><init>()V

    sput-object v0, Lu18;->b:Lyq8;

    new-instance v0, Lgl0;

    invoke-direct {v0}, Lgl0;-><init>()V

    sput-object v0, Lu18;->c:Lgl0;

    :goto_0
    return-void
.end method
