.class public Lcom/amazonaws/internal/StaticCredentialsProvider;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/amazonaws/auth/AWSCredentialsProvider;


# instance fields
.field private final a:Lcom/amazonaws/auth/AWSCredentials;


# direct methods
.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/amazonaws/internal/StaticCredentialsProvider;->a:Lcom/amazonaws/auth/AWSCredentials;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()Lcom/amazonaws/auth/AWSCredentials;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/internal/StaticCredentialsProvider;->a:Lcom/amazonaws/auth/AWSCredentials;

    .line 2
    .line 3
    return-object v0
.end method
