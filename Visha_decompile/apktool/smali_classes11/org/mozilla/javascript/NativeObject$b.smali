.class public Lorg/mozilla/javascript/NativeObject$b;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/NativeObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic b:Lorg/mozilla/javascript/NativeObject;


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/NativeObject;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/javascript/NativeObject$b;->b:Lorg/mozilla/javascript/NativeObject;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lorg/mozilla/javascript/NativeObject$b;->b:Lorg/mozilla/javascript/NativeObject;

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/NativeObject;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lorg/mozilla/javascript/NativeObject$b$a;

    invoke-direct {v0, p0}, Lorg/mozilla/javascript/NativeObject$b$a;-><init>(Lorg/mozilla/javascript/NativeObject$b;)V

    return-object v0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lorg/mozilla/javascript/NativeObject$b;->b:Lorg/mozilla/javascript/NativeObject;

    invoke-virtual {p0}, Lorg/mozilla/javascript/ScriptableObject;->size()I

    move-result p0

    return p0
.end method
