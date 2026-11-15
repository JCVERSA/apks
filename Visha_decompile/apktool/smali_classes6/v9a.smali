.class public final synthetic Lv9a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le74;


# instance fields
.field public final synthetic b:Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv9a;->b:Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lv9a;->b:Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;

    check-cast p1, Ljava/io/File;

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;->c(Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
