.class public Lcom/transsion/widgets/FlowLayout$FlowBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgets/FlowLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FlowBean"
.end annotation


# instance fields
.field public id:I

.field public isChecked:Z

.field tag:Ljava/lang/Object;

.field public type:I

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/transsion/widgets/FlowLayout$FlowBean;->value:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/transsion/widgets/FlowLayout$FlowBean;->value:Ljava/lang/String;

    .line 3
    iput p2, p0, Lcom/transsion/widgets/FlowLayout$FlowBean;->type:I

    .line 4
    iput p3, p0, Lcom/transsion/widgets/FlowLayout$FlowBean;->id:I

    .line 5
    iput-boolean p4, p0, Lcom/transsion/widgets/FlowLayout$FlowBean;->isChecked:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/transsion/widgets/FlowLayout$FlowBean;->value:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lcom/transsion/widgets/FlowLayout$FlowBean;->tag:Ljava/lang/Object;

    return-void
.end method
