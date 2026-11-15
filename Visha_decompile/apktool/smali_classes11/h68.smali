.class public final synthetic Lh68;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lh68;->b:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lh68;->b:I

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p0, p1}, Lcom/transsion/playercommon/videomodel/PlayListModel;->a(ILjava/lang/Integer;)Lcom/transsion/dbdata/beans/LyricData;

    move-result-object p0

    return-object p0
.end method
