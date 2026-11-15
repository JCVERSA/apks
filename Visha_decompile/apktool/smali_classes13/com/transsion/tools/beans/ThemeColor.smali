.class public Lcom/transsion/tools/beans/ThemeColor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public colorRes:I

.field public colorTheme:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput p1, p0, Lcom/transsion/tools/beans/ThemeColor;->colorRes:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/transsion/tools/beans/ThemeColor;->colorRes:I

    .line 3
    iput-object p2, p0, Lcom/transsion/tools/beans/ThemeColor;->colorTheme:Ljava/lang/String;

    return-void
.end method
