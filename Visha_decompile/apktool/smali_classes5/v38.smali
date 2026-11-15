.class public final synthetic Lv38;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:Lcom/transsion/audio/adapter/PlayListBucketAdapter;

.field public final synthetic c:Lcom/transsion/dbdata/database/PlayList;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/adapter/PlayListBucketAdapter;Lcom/transsion/dbdata/database/PlayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv38;->b:Lcom/transsion/audio/adapter/PlayListBucketAdapter;

    iput-object p2, p0, Lv38;->c:Lcom/transsion/dbdata/database/PlayList;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lv38;->b:Lcom/transsion/audio/adapter/PlayListBucketAdapter;

    iget-object p0, p0, Lv38;->c:Lcom/transsion/dbdata/database/PlayList;

    check-cast p1, Lcom/transsion/dbdata/database/PlayList;

    invoke-static {v0, p0, p1}, Lcom/transsion/audio/adapter/PlayListBucketAdapter;->b(Lcom/transsion/audio/adapter/PlayListBucketAdapter;Lcom/transsion/dbdata/database/PlayList;Lcom/transsion/dbdata/database/PlayList;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
