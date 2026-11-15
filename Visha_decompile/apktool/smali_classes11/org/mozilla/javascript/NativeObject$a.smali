.class public Lorg/mozilla/javascript/NativeObject$a;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/NativeObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic b:Lorg/mozilla/javascript/NativeObject;


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/NativeObject;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/javascript/NativeObject$a;->b:Lorg/mozilla/javascript/NativeObject;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lorg/mozilla/javascript/NativeObject$a$a;

    invoke-direct {v0, p0}, Lorg/mozilla/javascript/NativeObject$a$a;-><init>(Lorg/mozilla/javascript/NativeObject$a;)V

    return-object v0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lorg/mozilla/javascript/NativeObject$a;->b:Lorg/mozilla/javascript/NativeObject;

    invoke-virtual {p0}, Lorg/mozilla/javascript/ScriptableObject;->size()I

    move-result p0

    return p0
.end method
