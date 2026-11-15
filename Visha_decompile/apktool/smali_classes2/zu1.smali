.class public final synthetic Lzu1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lom5$a;


# instance fields
.field public final synthetic a:Lnb$a;

.field public final synthetic b:Lcom/google/android/exoplayer2/o;


# direct methods
.method public synthetic constructor <init>(Lnb$a;Lcom/google/android/exoplayer2/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzu1;->a:Lnb$a;

    iput-object p2, p0, Lzu1;->b:Lcom/google/android/exoplayer2/o;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lzu1;->a:Lnb$a;

    iget-object p0, p0, Lzu1;->b:Lcom/google/android/exoplayer2/o;

    check-cast p1, Lnb;

    invoke-static {v0, p0, p1}, Lwz1;->F(Lnb$a;Lcom/google/android/exoplayer2/o;Lnb;)V

    return-void
.end method
