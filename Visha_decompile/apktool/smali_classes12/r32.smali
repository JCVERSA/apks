.class public final synthetic Lr32;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lsv4;


# direct methods
.method public synthetic constructor <init>(Lsv4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr32;->b:Lsv4;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lr32;->b:Lsv4;

    invoke-static {p0}, Lcom/transsion/privateroom/api/DefaultPrivateRoomService;->b(Lsv4;)V

    return-void
.end method
