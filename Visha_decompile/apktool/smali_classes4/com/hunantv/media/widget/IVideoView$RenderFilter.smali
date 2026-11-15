.class public final enum Lcom/hunantv/media/widget/IVideoView$RenderFilter;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/widget/IVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RenderFilter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hunantv/media/widget/IVideoView$RenderFilter;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hunantv/media/widget/IVideoView$RenderFilter;

.field public static final enum NORMAL:Lcom/hunantv/media/widget/IVideoView$RenderFilter;

.field public static final enum UNSHARP_EDGE:Lcom/hunantv/media/widget/IVideoView$RenderFilter;

.field public static final enum UNSHARP_EDGE_COMPARE:Lcom/hunantv/media/widget/IVideoView$RenderFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/hunantv/media/widget/IVideoView$RenderFilter;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hunantv/media/widget/IVideoView$RenderFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hunantv/media/widget/IVideoView$RenderFilter;->NORMAL:Lcom/hunantv/media/widget/IVideoView$RenderFilter;

    new-instance v1, Lcom/hunantv/media/widget/IVideoView$RenderFilter;

    const-string v2, "UNSHARP_EDGE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/hunantv/media/widget/IVideoView$RenderFilter;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hunantv/media/widget/IVideoView$RenderFilter;->UNSHARP_EDGE:Lcom/hunantv/media/widget/IVideoView$RenderFilter;

    new-instance v2, Lcom/hunantv/media/widget/IVideoView$RenderFilter;

    const-string v3, "UNSHARP_EDGE_COMPARE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/hunantv/media/widget/IVideoView$RenderFilter;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/hunantv/media/widget/IVideoView$RenderFilter;->UNSHARP_EDGE_COMPARE:Lcom/hunantv/media/widget/IVideoView$RenderFilter;

    filled-new-array {v0, v1, v2}, [Lcom/hunantv/media/widget/IVideoView$RenderFilter;

    move-result-object v0

    sput-object v0, Lcom/hunantv/media/widget/IVideoView$RenderFilter;->$VALUES:[Lcom/hunantv/media/widget/IVideoView$RenderFilter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hunantv/media/widget/IVideoView$RenderFilter;
    .locals 1

    const-class v0, Lcom/hunantv/media/widget/IVideoView$RenderFilter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hunantv/media/widget/IVideoView$RenderFilter;

    return-object p0
.end method

.method public static values()[Lcom/hunantv/media/widget/IVideoView$RenderFilter;
    .locals 1

    sget-object v0, Lcom/hunantv/media/widget/IVideoView$RenderFilter;->$VALUES:[Lcom/hunantv/media/widget/IVideoView$RenderFilter;

    invoke-virtual {v0}, [Lcom/hunantv/media/widget/IVideoView$RenderFilter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hunantv/media/widget/IVideoView$RenderFilter;

    return-object v0
.end method
