.class public Lov8;
.super Ljava/rmi/server/UnicastRemoteObject;
.source "SourceFile"

# interfaces
.implements Ljava/rmi/Remote;


# instance fields
.field public final a:Lqv8;


# direct methods
.method public constructor <init>(Lqv8;)V
    .locals 0

    invoke-direct {p0}, Ljava/rmi/server/UnicastRemoteObject;-><init>()V

    iput-object p1, p0, Lov8;->a:Lqv8;

    return-void
.end method
