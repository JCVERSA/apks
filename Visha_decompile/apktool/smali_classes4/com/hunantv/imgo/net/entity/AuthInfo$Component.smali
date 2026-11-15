.class public Lcom/hunantv/imgo/net/entity/AuthInfo$Component;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/json/JsonInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/imgo/net/entity/AuthInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Component"
.end annotation


# static fields
.field public static final CODE_BUTTON:Ljava/lang/String; = "button"

.field public static final CODE_LINK:Ljava/lang/String; = "link"

.field public static final CODE_SUBTITLE:Ljava/lang/String; = "subtitle"

.field public static final CODE_TITLE:Ljava/lang/String; = "title"


# instance fields
.field public action:Lcom/hunantv/imgo/net/entity/AuthInfo$Action;

.field public click:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public code:Ljava/lang/String;

.field public line_num:I

.field public selected:I

.field public show:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public superscript:Ljava/lang/String;

.field public text:Ljava/lang/String;

.field public tips:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/hunantv/imgo/net/entity/AuthInfo$Component;->selected:I

    return-void
.end method
