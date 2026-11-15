.class public Lorg/proninyaroslav/libretorrent/core/storage/TagRepositoryImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/proninyaroslav/libretorrent/core/storage/TagRepository;


# instance fields
.field public final a:Lorg/proninyaroslav/libretorrent/core/storage/AppDatabase;


# direct methods
.method public constructor <init>(Lorg/proninyaroslav/libretorrent/core/storage/AppDatabase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/storage/TagRepositoryImpl;->a:Lorg/proninyaroslav/libretorrent/core/storage/AppDatabase;

    return-void
.end method
