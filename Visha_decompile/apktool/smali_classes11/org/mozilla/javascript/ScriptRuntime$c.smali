.class public final Lorg/mozilla/javascript/ScriptRuntime$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/ScriptRuntime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lorg/mozilla/javascript/ScriptRuntime$c;->a:Ljava/lang/String;

    .line 6
    iput p1, p0, Lorg/mozilla/javascript/ScriptRuntime$c;->b:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/mozilla/javascript/ScriptRuntime$c;->a:Ljava/lang/String;

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lorg/mozilla/javascript/ScriptRuntime$c;->b:I

    return-void
.end method
