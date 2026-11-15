.class public final synthetic Loj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lpj;


# direct methods
.method public synthetic constructor <init>(Lpj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Loj;->b:Lpj;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Loj;->b:Lpj;

    invoke-static {p0}, Lpj;->a(Lpj;)V

    return-void
.end method
