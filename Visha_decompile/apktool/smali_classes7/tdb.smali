.class public final synthetic Ltdb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lec9;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltdb;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Ltdb;->b:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lvdb$a;->b(Ljava/lang/String;Lec9;)V

    return-void
.end method
