.class public final synthetic Lv78;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le74;


# instance fields
.field public final synthetic b:Lcom/transsion/dbdata/source/data/repository/PlayListRepository;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/dbdata/source/data/repository/PlayListRepository;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv78;->b:Lcom/transsion/dbdata/source/data/repository/PlayListRepository;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lv78;->b:Lcom/transsion/dbdata/source/data/repository/PlayListRepository;

    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/repository/PlayListRepository;->c(Lcom/transsion/dbdata/source/data/repository/PlayListRepository;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
