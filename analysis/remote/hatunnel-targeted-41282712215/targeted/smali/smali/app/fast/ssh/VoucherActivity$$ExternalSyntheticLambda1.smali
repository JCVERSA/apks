.class public final synthetic Lapp/fast/ssh/VoucherActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lapp/fast/ssh/VoucherActivity;

.field public final synthetic f$1:Ljava/nio/ByteBuffer;


# direct methods
.method public synthetic constructor <init>(Lapp/fast/ssh/VoucherActivity;Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lapp/fast/ssh/VoucherActivity$$ExternalSyntheticLambda1;->f$0:Lapp/fast/ssh/VoucherActivity;

    iput-object p2, p0, Lapp/fast/ssh/VoucherActivity$$ExternalSyntheticLambda1;->f$1:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lapp/fast/ssh/VoucherActivity$$ExternalSyntheticLambda1;->f$0:Lapp/fast/ssh/VoucherActivity;

    iget-object v1, p0, Lapp/fast/ssh/VoucherActivity$$ExternalSyntheticLambda1;->f$1:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Lapp/fast/ssh/VoucherActivity;->lambda$onCreate$0$app-fast-ssh-VoucherActivity(Ljava/nio/ByteBuffer;)V

    return-void
.end method
