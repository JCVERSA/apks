.class public Lorg/mozilla/javascript/NativeJSON$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/NativeJSON;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/util/Stack;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Lorg/mozilla/javascript/Callable;

.field public e:Ljava/util/List;

.field public f:Lorg/mozilla/javascript/Context;

.field public g:Lorg/mozilla/javascript/Scriptable;


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/String;Lorg/mozilla/javascript/Callable;Ljava/util/List;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/NativeJSON$a;->a:Ljava/util/Stack;

    iput-object p1, p0, Lorg/mozilla/javascript/NativeJSON$a;->f:Lorg/mozilla/javascript/Context;

    iput-object p2, p0, Lorg/mozilla/javascript/NativeJSON$a;->g:Lorg/mozilla/javascript/Scriptable;

    iput-object p3, p0, Lorg/mozilla/javascript/NativeJSON$a;->b:Ljava/lang/String;

    iput-object p4, p0, Lorg/mozilla/javascript/NativeJSON$a;->c:Ljava/lang/String;

    iput-object p5, p0, Lorg/mozilla/javascript/NativeJSON$a;->d:Lorg/mozilla/javascript/Callable;

    iput-object p6, p0, Lorg/mozilla/javascript/NativeJSON$a;->e:Ljava/util/List;

    return-void
.end method
