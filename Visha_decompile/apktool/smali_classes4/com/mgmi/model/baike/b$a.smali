.class public Lcom/mgmi/model/baike/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgmi/model/baike/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public bottom:I

.field public left:I

.field public right:I

.field final synthetic this$0:Lcom/mgmi/model/baike/b;

.field public top:I


# direct methods
.method public constructor <init>(Lcom/mgmi/model/baike/b;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/baike/b$a;->this$0:Lcom/mgmi/model/baike/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/mgmi/model/baike/b$a;->left:I

    iput p1, p0, Lcom/mgmi/model/baike/b$a;->right:I

    iput p1, p0, Lcom/mgmi/model/baike/b$a;->top:I

    iput p1, p0, Lcom/mgmi/model/baike/b$a;->bottom:I

    return-void
.end method
