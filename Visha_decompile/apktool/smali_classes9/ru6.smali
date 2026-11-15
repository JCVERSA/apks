.class public final synthetic Lru6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru6;->b:Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;

    iput p2, p0, Lru6;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lru6;->b:Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;

    iget p0, p0, Lru6;->c:I

    invoke-static {v0, p0}, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->d(Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;I)V

    return-void
.end method
