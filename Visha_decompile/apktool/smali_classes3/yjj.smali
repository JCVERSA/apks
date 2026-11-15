.class public final synthetic Lyjj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk3i;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lyjj;->b:I

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lyjj;->b:I

    invoke-static {p0}, Lakj;->b(I)Landroid/os/HandlerThread;

    move-result-object p0

    return-object p0
.end method
