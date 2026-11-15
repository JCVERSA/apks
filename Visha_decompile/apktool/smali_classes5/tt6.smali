.class public final synthetic Ltt6;
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

    iput p1, p0, Ltt6;->b:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Ltt6;->b:I

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p0, p1}, Lcom/transsion/audio/widgets/MusicHelper;->d(ILjava/lang/Integer;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p0

    return-object p0
.end method
