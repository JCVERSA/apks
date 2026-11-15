.class public final synthetic Luc0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lwc0;


# direct methods
.method public synthetic constructor <init>(Lwc0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luc0;->b:Lwc0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Luc0;->b:Lwc0;

    invoke-static {p0}, Lwc0;->g(Lwc0;)V

    return-void
.end method
