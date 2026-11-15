.class public final Ltia;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Loz3;


# instance fields
.field public final b:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltia;->b:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public emit(Ljava/lang/Object;Lwh1;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ltia;->b:Ljava/lang/Throwable;

    throw p0
.end method
