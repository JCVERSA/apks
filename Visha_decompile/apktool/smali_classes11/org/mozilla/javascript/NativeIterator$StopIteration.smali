.class public Lorg/mozilla/javascript/NativeIterator$StopIteration;
.super Lorg/mozilla/javascript/NativeObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/NativeIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StopIteration"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x227d07bedda89dbfL


# instance fields
.field private value:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/mozilla/javascript/NativeObject;-><init>()V

    .line 2
    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    iput-object v0, p0, Lorg/mozilla/javascript/NativeIterator$StopIteration;->value:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lorg/mozilla/javascript/NativeObject;-><init>()V

    .line 4
    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 5
    iput-object p1, p0, Lorg/mozilla/javascript/NativeIterator$StopIteration;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 0

    const-string p0, "StopIteration"

    return-object p0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/javascript/NativeIterator$StopIteration;->value:Ljava/lang/Object;

    return-object p0
.end method

.method public hasInstance(Lorg/mozilla/javascript/Scriptable;)Z
    .locals 0

    instance-of p0, p1, Lorg/mozilla/javascript/NativeIterator$StopIteration;

    return p0
.end method
