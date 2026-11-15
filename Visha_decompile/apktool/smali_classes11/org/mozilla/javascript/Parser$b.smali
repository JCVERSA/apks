.class public Lorg/mozilla/javascript/Parser$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/Parser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Lorg/mozilla/javascript/ast/AstNode;

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lorg/mozilla/javascript/Parser$b;->b:I

    .line 3
    iput v0, p0, Lorg/mozilla/javascript/Parser$b;->c:I

    return-void
.end method

.method public synthetic constructor <init>(Lorg/mozilla/javascript/Parser$a;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser$b;-><init>()V

    return-void
.end method
