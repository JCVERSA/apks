.class public final synthetic Lu32;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Ltv4;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Ltv4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu32;->b:Ljava/util/List;

    iput-object p2, p0, Lu32;->c:Ltv4;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lu32;->b:Ljava/util/List;

    iget-object p0, p0, Lu32;->c:Ltv4;

    invoke-static {v0, p0}, Lcom/transsion/privateroom/api/DefaultPrivateRoomService;->a(Ljava/util/List;Ltv4;)V

    return-void
.end method
