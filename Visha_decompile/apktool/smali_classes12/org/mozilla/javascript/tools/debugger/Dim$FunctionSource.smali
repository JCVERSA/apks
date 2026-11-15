.class public Lorg/mozilla/javascript/tools/debugger/Dim$FunctionSource;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/tools/debugger/Dim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FunctionSource"
.end annotation


# instance fields
.field private firstLine:I

.field private name:Ljava/lang/String;

.field private sourceInfo:Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;


# direct methods
.method private constructor <init>(Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;ILjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_0

    .line 3
    iput-object p1, p0, Lorg/mozilla/javascript/tools/debugger/Dim$FunctionSource;->sourceInfo:Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;

    .line 4
    iput p2, p0, Lorg/mozilla/javascript/tools/debugger/Dim$FunctionSource;->firstLine:I

    .line 5
    iput-object p3, p0, Lorg/mozilla/javascript/tools/debugger/Dim$FunctionSource;->name:Ljava/lang/String;

    return-void

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public synthetic constructor <init>(Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;ILjava/lang/String;Lorg/mozilla/javascript/tools/debugger/Dim$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/mozilla/javascript/tools/debugger/Dim$FunctionSource;-><init>(Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public firstLine()I
    .locals 0

    iget p0, p0, Lorg/mozilla/javascript/tools/debugger/Dim$FunctionSource;->firstLine:I

    return p0
.end method

.method public name()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/javascript/tools/debugger/Dim$FunctionSource;->name:Ljava/lang/String;

    return-object p0
.end method

.method public sourceInfo()Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/javascript/tools/debugger/Dim$FunctionSource;->sourceInfo:Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;

    return-object p0
.end method
