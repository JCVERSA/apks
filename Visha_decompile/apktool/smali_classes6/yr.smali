.class public final synthetic Lyr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le74;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lyr;->b:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lyr;->b:I

    check-cast p1, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->f(ILcom/transsion/dbdata/beans/media/AudioItem;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
