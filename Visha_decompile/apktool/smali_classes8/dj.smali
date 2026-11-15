.class public abstract Ldj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcw0;


# instance fields
.field public b:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Ldj;->b:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 0

    iget-boolean p0, p0, Ldj;->b:Z

    return p0
.end method
