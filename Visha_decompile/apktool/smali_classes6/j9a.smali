.class public final synthetic Lj9a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc74;


# instance fields
.field public final synthetic b:Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj9a;->b:Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lj9a;->b:Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;

    invoke-static {p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->b(Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
