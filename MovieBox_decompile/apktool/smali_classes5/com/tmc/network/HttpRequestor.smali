.class public Lcom/tmc/network/HttpRequestor;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tmc/network/HttpRequestor$HttpRequestorHolder;,
        Lcom/tmc/network/HttpRequestor$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a2\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010!\n\u0002\u0008\u0008\u0008\u0016\u0018\u0000 N2\u00020\u0001:\u0002NOB\u0007\u0008\u0004\u00a2\u0006\u0002\u0010\u0002J4\u0010\u0011\u001a\u00020\u00122\u0014\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0014\u0010\u0015\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0014H\u0002JZ\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u00042\u0014\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0014\u0010\u0019\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0014\u0010\u0015\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0006\u0010\u001a\u001a\u00020\u001bJX\u0010\u0016\u001a\u00020\u001c2\u0006\u0010\u0018\u001a\u00020\u00042\u0014\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0014\u0010\u0019\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0014\u0010\u0015\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0006\u0010\u001a\u001a\u00020\u001dJL\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u00042\u0014\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0014\u0010\u0019\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0006\u0010\u001e\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u001bJJ\u0010\u0016\u001a\u00020\u001c2\u0006\u0010\u0018\u001a\u00020\u00042\u0014\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0014\u0010\u0019\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0006\u0010\u001e\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u001dJ/\u0010\u001f\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u00042\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u00142\u0006\u0010\u001a\u001a\u00020\u001bH\u0086\u0002J-\u0010\u001f\u001a\u00020\u001c2\u0006\u0010\u0018\u001a\u00020\u00042\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u00142\u0006\u0010\u001a\u001a\u00020\u001dH\u0086\u0002JG\u0010\u001f\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u00042\u0014\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0014\u0010\u0019\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0006\u0010\u001a\u001a\u00020\u001bH\u0086\u0002JE\u0010\u001f\u001a\u00020\u001c2\u0006\u0010\u0018\u001a\u00020\u00042\u0014\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0014\u0010\u0019\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0006\u0010\u001a\u001a\u00020\u001dH\u0086\u0002J\u0017\u0010 \u001a\u0004\u0018\u00010!2\u0008\u0010\"\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0002\u0010#J\u001c\u0010$\u001a\u00020%2\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u0014H\u0002J\u001e\u0010&\u001a\u00020\'2\u0014\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0014H\u0002J\u0006\u0010(\u001a\u00020\u0008J(\u0010)\u001a\u0004\u0018\u00010*2\u0006\u0010\u0018\u001a\u00020\u00042\u0014\u0010\u0019\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0014H\u0002J\u0014\u0010+\u001a\u0004\u0018\u00010\u00122\u0008\u0010,\u001a\u0004\u0018\u00010\u0001H\u0002J\u001c\u0010-\u001a\u00020.2\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u0014H\u0002J\u001a\u0010/\u001a\u00020\u00122\u0006\u00100\u001a\u00020\u00042\u0008\u00101\u001a\u0004\u0018\u000102H\u0002JD\u00103\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u00042\u0014\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0014\u0010\u0019\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0006\u0010\u001a\u001a\u00020\u001bJ2\u00104\u001a\u00020\u001c2\u0008\u00105\u001a\u0004\u0018\u0001062\u0008\u00107\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u00108\u001a\u0004\u0018\u0001092\n\u0008\u0002\u0010:\u001a\u0004\u0018\u00010;J<\u00104\u001a\u00020\u001c2\u0008\u00105\u001a\u0004\u0018\u0001062\u0008\u00107\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u00108\u001a\u0004\u0018\u0001092\n\u0008\u0002\u0010:\u001a\u0004\u0018\u00010;2\u0008\u0008\u0002\u0010<\u001a\u00020\nJZ\u0010=\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u00042\u0014\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0014\u0010\u0019\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0014\u0010\u0015\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0006\u0010\u001a\u001a\u00020\u001bJX\u0010=\u001a\u00020\u001c2\u0006\u0010\u0018\u001a\u00020\u00042\u0014\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0014\u0010\u0019\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0014\u0010\u0015\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0006\u0010\u001a\u001a\u00020\u001dJN\u0010=\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u00042\u0014\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0014\u0010\u0019\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0006\u0010\u001e\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u001bH\u0002JL\u0010=\u001a\u00020\u001c2\u0006\u0010\u0018\u001a\u00020\u00042\u0014\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0014\u0010\u0019\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0006\u0010\u001e\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u001dH\u0002JP\u0010>\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u00042\u0014\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0014\u0010\u0019\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0008\u0010,\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u001a\u001a\u00020\u001bH\u0007JN\u0010>\u001a\u00020\u001c2\u0006\u0010\u0018\u001a\u00020\u00042\u0014\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0014\u0010\u0019\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0008\u0010,\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u001a\u001a\u00020\u001dH\u0007J\\\u0010?\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u00042\u0014\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0014\u0010\u0019\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0014\u0010@\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0006\u0010\u001a\u001a\u00020\u001bH\u0007JZ\u0010?\u001a\u00020\u001c2\u0006\u0010\u0018\u001a\u00020\u00042\u0014\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0014\u0010\u0019\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0014\u0010@\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0006\u0010\u001a\u001a\u00020\u001dH\u0007JN\u0010A\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u00042\u0014\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0014\u0010\u0019\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0006\u0010\u001e\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u001bH\u0007JL\u0010A\u001a\u00020\u001c2\u0006\u0010\u0018\u001a\u00020\u00042\u0014\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0014\u0010\u0019\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0006\u0010\u001e\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u001dH\u0007JZ\u0010B\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u00042\u0014\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0014\u0010\u0019\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0014\u0010\u0015\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0006\u0010\u001a\u001a\u00020\u001bJZ\u0010C\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u00042\u0014\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0014\u0010\u0019\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0014\u0010\u0015\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0006\u0010\u001a\u001a\u00020\u001bJX\u0010C\u001a\u00020\u001c2\u0006\u0010\u0018\u001a\u00020\u00042\u0014\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0014\u0010\u0019\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0014\u0010\u0015\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0006\u0010\u001a\u001a\u00020\u001dJL\u0010C\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u00042\u0014\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0014\u0010\u0019\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0006\u0010\u001e\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u001bJJ\u0010C\u001a\u00020\u001c2\u0006\u0010\u0018\u001a\u00020\u00042\u0014\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0014\u0010\u0019\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0006\u0010\u001e\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u001dJ\u001e\u0010D\u001a\u00020\u001c2\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u0010J\u000e\u0010E\u001a\u00020\u001c2\u0006\u0010\u0006\u001a\u00020\u0004J\"\u0010F\u001a\u00020\u001c2\u000c\u0010G\u001a\u0008\u0012\u0004\u0012\u00020\u00040H2\u000c\u0010I\u001a\u0008\u0012\u0004\u0012\u00020\u00040HJ\u000e\u0010J\u001a\u00020\u001c2\u0006\u0010\u000b\u001a\u00020\nJ\u000e\u0010K\u001a\u00020\u001c2\u0006\u0010L\u001a\u00020\nJ\u000e\u0010M\u001a\u00020\u001c2\u0006\u0010\u000e\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006P"
    }
    d2 = {
        "Lcom/tmc/network/HttpRequestor;",
        "",
        "()V",
        "appName",
        "",
        "appVersion",
        "country",
        "httpClient",
        "Lcom/tmc/network/HttpClient;",
        "ifCommonHeader",
        "",
        "ifGatewayAlwaysAccess",
        "isInit",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "language",
        "versionCode",
        "",
        "buildRequestBody",
        "Lokhttp3/RequestBody;",
        "headers",
        "",
        "formData",
        "delete",
        "Lokhttp3/Call;",
        "url",
        "params",
        "callback",
        "Lcom/tmc/network/INetworkCallback;",
        "",
        "Lokhttp3/Callback;",
        "requestBody",
        "get",
        "getCallTimeout",
        "",
        "value",
        "(Ljava/lang/String;)Ljava/lang/Long;",
        "getFormBody",
        "Lokhttp3/FormBody;",
        "getHeaders",
        "Lokhttp3/Headers;",
        "getHttpClient",
        "getHttpUrl",
        "Lokhttp3/HttpUrl;",
        "getJSONBody",
        "json",
        "getMultipartBody",
        "Lokhttp3/MultipartBody;",
        "getRawBody",
        "content",
        "type",
        "Lokhttp3/MediaType;",
        "head",
        "init",
        "context",
        "Landroid/content/Context;",
        "appId",
        "workMode",
        "Lcom/transsion/api/gateway/config/WorkMode;",
        "progressListener",
        "Lcom/tmc/network/ProgressListener;",
        "isNetworkMonitorEnable",
        "post",
        "postJSON",
        "postMultipart",
        "multipartData",
        "postRequestBody",
        "postV2",
        "put",
        "setAppInfo",
        "setCountry",
        "setGateWayActivateSignConfig",
        "hostList",
        "",
        "pathList",
        "setGatewayAlwaysAccess",
        "setIfCommonHeader",
        "commonHeader",
        "setLanguage",
        "Companion",
        "HttpRequestorHolder",
        "network_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field private static final APP_NAME:Ljava/lang/String;

.field private static final APP_VERSION:Ljava/lang/String;

.field private static final CALL_TIMEOUT:Ljava/lang/String; = "m-timeout"

.field private static final CONTENT_TYPE:Ljava/lang/String;

.field private static final COUNTRY:Ljava/lang/String;

.field public static final Companion:Lcom/tmc/network/HttpRequestor$Companion;

.field private static final ENCODING:Ljava/lang/String;

.field private static final GATEWAY_ALWAYS_ACCESS:Ljava/lang/String;

.field private static final LANGUAGE:Ljava/lang/String;

.field private static final MAX_CALL_TIMEOUT:J = 0x15f90L

.field private static final TIME_ZONE:Ljava/lang/String;

.field private static final VERSION_CODE:Ljava/lang/String;

.field private static enablePostMode:Z


# instance fields
.field private appName:Ljava/lang/String;

.field private appVersion:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private final httpClient:Lcom/tmc/network/HttpClient;

.field private ifCommonHeader:Z

.field private ifGatewayAlwaysAccess:Z

.field private final isInit:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private language:Ljava/lang/String;

.field private versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/tmc/network/HttpRequestor$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/tmc/network/HttpRequestor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/tmc/network/HttpRequestor;->Companion:Lcom/tmc/network/HttpRequestor$Companion;

    .line 8
    .line 9
    const-string v0, "UTF-8"

    .line 10
    .line 11
    sput-object v0, Lcom/tmc/network/HttpRequestor;->ENCODING:Ljava/lang/String;

    .line 12
    .line 13
    const-string v0, "Content-Type"

    .line 14
    .line 15
    sput-object v0, Lcom/tmc/network/HttpRequestor;->CONTENT_TYPE:Ljava/lang/String;

    .line 16
    .line 17
    const-string v0, "Accept-Timezone"

    .line 18
    .line 19
    sput-object v0, Lcom/tmc/network/HttpRequestor;->TIME_ZONE:Ljava/lang/String;

    .line 20
    .line 21
    const-string v0, "Accept-Language"

    .line 22
    .line 23
    sput-object v0, Lcom/tmc/network/HttpRequestor;->LANGUAGE:Ljava/lang/String;

    .line 24
    .line 25
    const-string v0, "Accept-Country"

    .line 26
    .line 27
    sput-object v0, Lcom/tmc/network/HttpRequestor;->COUNTRY:Ljava/lang/String;

    .line 28
    .line 29
    const-string v0, "x-tr-region"

    .line 30
    .line 31
    sput-object v0, Lcom/tmc/network/HttpRequestor;->GATEWAY_ALWAYS_ACCESS:Ljava/lang/String;

    .line 32
    .line 33
    const-string v0, "appName"

    .line 34
    .line 35
    sput-object v0, Lcom/tmc/network/HttpRequestor;->APP_NAME:Ljava/lang/String;

    .line 36
    .line 37
    const-string v0, "appVersion"

    .line 38
    .line 39
    sput-object v0, Lcom/tmc/network/HttpRequestor;->APP_VERSION:Ljava/lang/String;

    .line 40
    .line 41
    const-string v0, "versionCode"

    .line 42
    .line 43
    sput-object v0, Lcom/tmc/network/HttpRequestor;->VERSION_CODE:Ljava/lang/String;

    .line 44
    .line 45
    const/4 v0, 0x1

    .line 46
    sput-boolean v0, Lcom/tmc/network/HttpRequestor;->enablePostMode:Z

    .line 47
    .line 48
    return-void
.end method

.method protected constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/tmc/network/HttpRequestor;->ifCommonHeader:Z

    .line 6
    .line 7
    const-string v1, ""

    .line 8
    .line 9
    iput-object v1, p0, Lcom/tmc/network/HttpRequestor;->appName:Ljava/lang/String;

    .line 10
    .line 11
    iput-object v1, p0, Lcom/tmc/network/HttpRequestor;->appVersion:Ljava/lang/String;

    .line 12
    .line 13
    iput-object v1, p0, Lcom/tmc/network/HttpRequestor;->language:Ljava/lang/String;

    .line 14
    .line 15
    iput-object v1, p0, Lcom/tmc/network/HttpRequestor;->country:Ljava/lang/String;

    .line 16
    .line 17
    new-instance v1, Lcom/tmc/network/HttpClient;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-direct {v1, v2, v0, v2}, Lcom/tmc/network/HttpClient;-><init>(Lcom/tmc/network/HttpClientConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lcom/tmc/network/HttpRequestor;->httpClient:Lcom/tmc/network/HttpClient;

    .line 24
    .line 25
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/tmc/network/HttpRequestor;->isInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 32
    .line 33
    return-void
.end method

.method public static final synthetic access$setEnablePostMode$cp(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/tmc/network/HttpRequestor;->enablePostMode:Z

    .line 2
    .line 3
    return-void
.end method

.method private final buildRequestBody(Ljava/util/Map;Ljava/util/Map;)Lokhttp3/RequestBody;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lokhttp3/RequestBody;"
        }
    .end annotation

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/collections/MapsKt;->h()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move-object v0, p2

    .line 9
    :goto_0
    if-nez p1, :cond_1

    .line 10
    .line 11
    goto :goto_2

    .line 12
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_5

    .line 25
    .line 26
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Ljava/util/Map$Entry;

    .line 31
    .line 32
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Ljava/lang/String;

    .line 37
    .line 38
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Ljava/lang/String;

    .line 43
    .line 44
    sget-object v3, Lcom/tmc/network/HttpRequestor;->CONTENT_TYPE:Ljava/lang/String;

    .line 45
    .line 46
    const/4 v4, 0x1

    .line 47
    invoke-static {v3, v2, v4}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_2

    .line 52
    .line 53
    const-string p1, "application/x-www-form-urlencoded"

    .line 54
    .line 55
    const/4 v2, 0x0

    .line 56
    const/4 v3, 0x2

    .line 57
    const/4 v4, 0x0

    .line 58
    invoke-static {v1, p1, v2, v3, v4}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-eqz p1, :cond_3

    .line 63
    .line 64
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    invoke-direct {p0, p2}, Lcom/tmc/network/HttpRequestor;->getFormBody(Ljava/util/Map;)Lokhttp3/FormBody;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    goto :goto_1

    .line 72
    :cond_3
    const-string p1, "multipart/form-data"

    .line 73
    .line 74
    invoke-static {v1, p1, v2, v3, v4}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    if-eqz p1, :cond_4

    .line 79
    .line 80
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    invoke-direct {p0, p2}, Lcom/tmc/network/HttpRequestor;->getMultipartBody(Ljava/util/Map;)Lokhttp3/MultipartBody;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    goto :goto_1

    .line 88
    :cond_4
    sget-object p1, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    .line 89
    .line 90
    new-instance p2, Lcom/google/gson/Gson;

    .line 91
    .line 92
    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    const-string v0, "Gson().toJson(data)"

    .line 100
    .line 101
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    sget-object v0, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    .line 105
    .line 106
    invoke-virtual {v0, v1}, Lokhttp3/MediaType$Companion;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {p1, p2, v0}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    :goto_1
    return-object p1

    .line 115
    :cond_5
    :goto_2
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    invoke-direct {p0, p2}, Lcom/tmc/network/HttpRequestor;->getFormBody(Ljava/util/Map;)Lokhttp3/FormBody;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    return-object p1
.end method

.method private final getFormBody(Ljava/util/Map;)Lokhttp3/FormBody;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lokhttp3/FormBody;"
        }
    .end annotation

    .line 1
    new-instance v0, Lokhttp3/FormBody$Builder;

    .line 2
    .line 3
    sget-object v1, Lcom/tmc/network/HttpRequestor;->ENCODING:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Lokhttp3/FormBody$Builder;-><init>(Ljava/nio/charset/Charset;)V

    .line 10
    .line 11
    .line 12
    sget-object v1, Lrf/a;->a:Lrf/a;

    .line 13
    .line 14
    invoke-virtual {v1, p1}, Lrf/a;->c(Ljava/util/Map;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Ljava/util/Map$Entry;

    .line 39
    .line 40
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Ljava/lang/String;

    .line 45
    .line 46
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v0, v2, v1}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {v0}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    return-object p1
.end method

.method private final getHeaders(Ljava/util/Map;)Lokhttp3/Headers;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lokhttp3/Headers;"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    new-instance p1, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-boolean v0, p0, Lcom/tmc/network/HttpRequestor;->ifCommonHeader:Z

    .line 9
    .line 10
    if-eqz v0, :cond_7

    .line 11
    .line 12
    sget-object v0, Lcom/tmc/network/HttpRequestor;->TIME_ZONE:Ljava/lang/String;

    .line 13
    .line 14
    sget-object v1, Lrf/a;->a:Lrf/a;

    .line 15
    .line 16
    invoke-virtual {v1}, Lrf/a;->a()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    iget-boolean v0, p0, Lcom/tmc/network/HttpRequestor;->ifGatewayAlwaysAccess:Z

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    sget-object v0, Lcom/tmc/network/HttpRequestor;->GATEWAY_ALWAYS_ACCESS:Ljava/lang/String;

    .line 28
    .line 29
    const-string v2, "CN"

    .line 30
    .line 31
    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    :cond_1
    iget-object v0, p0, Lcom/tmc/network/HttpRequestor;->appName:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v1, v0}, Lrf/a;->b(Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_2

    .line 41
    .line 42
    sget-object v0, Lcom/tmc/network/HttpRequestor;->APP_NAME:Ljava/lang/String;

    .line 43
    .line 44
    iget-object v2, p0, Lcom/tmc/network/HttpRequestor;->appName:Ljava/lang/String;

    .line 45
    .line 46
    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    :cond_2
    iget-object v0, p0, Lcom/tmc/network/HttpRequestor;->appVersion:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v1, v0}, Lrf/a;->b(Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_3

    .line 56
    .line 57
    sget-object v0, Lcom/tmc/network/HttpRequestor;->APP_VERSION:Ljava/lang/String;

    .line 58
    .line 59
    iget-object v2, p0, Lcom/tmc/network/HttpRequestor;->appVersion:Ljava/lang/String;

    .line 60
    .line 61
    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    :cond_3
    iget v0, p0, Lcom/tmc/network/HttpRequestor;->versionCode:I

    .line 65
    .line 66
    if-lez v0, :cond_4

    .line 67
    .line 68
    sget-object v2, Lcom/tmc/network/HttpRequestor;->VERSION_CODE:Ljava/lang/String;

    .line 69
    .line 70
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    const-string v3, ""

    .line 75
    .line 76
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->q(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    :cond_4
    iget-object v0, p0, Lcom/tmc/network/HttpRequestor;->language:Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual {v1, v0}, Lrf/a;->b(Ljava/lang/String;)Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-nez v0, :cond_5

    .line 90
    .line 91
    sget-object v0, Lcom/tmc/network/HttpRequestor;->LANGUAGE:Ljava/lang/String;

    .line 92
    .line 93
    iget-object v2, p0, Lcom/tmc/network/HttpRequestor;->language:Ljava/lang/String;

    .line 94
    .line 95
    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    :cond_5
    iget-object v0, p0, Lcom/tmc/network/HttpRequestor;->country:Ljava/lang/String;

    .line 99
    .line 100
    invoke-virtual {v1, v0}, Lrf/a;->b(Ljava/lang/String;)Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-nez v0, :cond_6

    .line 105
    .line 106
    sget-object v0, Lcom/tmc/network/HttpRequestor;->COUNTRY:Ljava/lang/String;

    .line 107
    .line 108
    iget-object v1, p0, Lcom/tmc/network/HttpRequestor;->country:Ljava/lang/String;

    .line 109
    .line 110
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    :cond_6
    sget-object v0, Lokhttp3/Headers;->Companion:Lokhttp3/Headers$Companion;

    .line 114
    .line 115
    invoke-virtual {v0, p1}, Lokhttp3/Headers$Companion;->of(Ljava/util/Map;)Lokhttp3/Headers;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    return-object p1

    .line 120
    :cond_7
    new-instance p1, Lokhttp3/Headers$Builder;

    .line 121
    .line 122
    invoke-direct {p1}, Lokhttp3/Headers$Builder;-><init>()V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    return-object p1
.end method

.method private final getHttpUrl(Ljava/lang/String;Ljava/util/Map;)Lokhttp3/HttpUrl;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lokhttp3/HttpUrl;"
        }
    .end annotation

    .line 1
    sget-object v0, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lokhttp3/HttpUrl$Companion;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x0

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    move-object p1, v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->newBuilder()Lokhttp3/HttpUrl$Builder;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    :goto_0
    sget-object v1, Lrf/a;->a:Lrf/a;

    .line 17
    .line 18
    invoke-virtual {v1, p2}, Lrf/a;->c(Ljava/util/Map;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    if-eqz p2, :cond_2

    .line 25
    .line 26
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Ljava/util/Map$Entry;

    .line 45
    .line 46
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    check-cast v2, Ljava/lang/String;

    .line 51
    .line 52
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    check-cast v1, Ljava/lang/String;

    .line 57
    .line 58
    if-nez p1, :cond_1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    invoke-virtual {p1, v2, v1}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    if-nez p1, :cond_3

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_3
    invoke-virtual {p1}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    :goto_2
    return-object v0
.end method

.method private final getJSONBody(Ljava/lang/Object;)Lokhttp3/RequestBody;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/gson/Gson;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string v0, "Gson().toJson(json)"

    .line 11
    .line 12
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sget-object v0, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    .line 16
    .line 17
    sget-object v1, Lcom/tmc/network/ContentType;->JSON:Lcom/tmc/network/ContentType;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/tmc/network/ContentType;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Lokhttp3/MediaType$Companion;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-direct {p0, p1, v0}, Lcom/tmc/network/HttpRequestor;->getRawBody(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    return-object p1
.end method

.method private final getMultipartBody(Ljava/util/Map;)Lokhttp3/MultipartBody;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lokhttp3/MultipartBody;"
        }
    .end annotation

    .line 1
    new-instance v0, Lokhttp3/MultipartBody$Builder;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-direct {v0, v1, v2, v1}, Lokhttp3/MultipartBody$Builder;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 6
    .line 7
    .line 8
    sget-object v1, Lrf/a;->a:Lrf/a;

    .line 9
    .line 10
    invoke-virtual {v1, p1}, Lrf/a;->c(Ljava/util/Map;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Ljava/util/Map$Entry;

    .line 35
    .line 36
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Ljava/lang/String;

    .line 41
    .line 42
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v0, v2, v1}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {v0}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    return-object p1
.end method

.method private final getRawBody(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;
    .locals 1

    .line 1
    sget-object v0, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p2, p1}, Lokhttp3/RequestBody$Companion;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public static synthetic init$default(Lcom/tmc/network/HttpRequestor;Landroid/content/Context;Ljava/lang/String;Lcom/transsion/api/gateway/config/WorkMode;Lcom/tmc/network/ProgressListener;ILjava/lang/Object;)V
    .locals 0

    if-nez p6, :cond_2

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    .line 3
    sget-object p3, Lcom/transsion/api/gateway/config/WorkMode;->MODE_ONLINE:Lcom/transsion/api/gateway/config/WorkMode;

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/4 p4, 0x0

    .line 4
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tmc/network/HttpRequestor;->init(Landroid/content/Context;Ljava/lang/String;Lcom/transsion/api/gateway/config/WorkMode;Lcom/tmc/network/ProgressListener;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: init"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic init$default(Lcom/tmc/network/HttpRequestor;Landroid/content/Context;Ljava/lang/String;Lcom/transsion/api/gateway/config/WorkMode;Lcom/tmc/network/ProgressListener;ZILjava/lang/Object;)V
    .locals 6

    if-nez p7, :cond_3

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    .line 1
    sget-object p3, Lcom/transsion/api/gateway/config/WorkMode;->MODE_ONLINE:Lcom/transsion/api/gateway/config/WorkMode;

    :cond_0
    move-object v3, p3

    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    const/4 p4, 0x0

    :cond_1
    move-object v4, p4

    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_2

    const/4 p5, 0x0

    :cond_2
    move v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 2
    invoke-virtual/range {v0 .. v5}, Lcom/tmc/network/HttpRequestor;->init(Landroid/content/Context;Ljava/lang/String;Lcom/transsion/api/gateway/config/WorkMode;Lcom/tmc/network/ProgressListener;Z)V

    return-void

    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: init"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lokhttp3/RequestBody;Lcom/tmc/network/INetworkCallback;)Lokhttp3/Call;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lokhttp3/RequestBody;",
            "Lcom/tmc/network/INetworkCallback;",
            ")",
            "Lokhttp3/Call;"
        }
    .end annotation

    .line 16
    new-instance v0, Lcom/tmc/network/NetworkCallback;

    invoke-direct {v0, p5}, Lcom/tmc/network/NetworkCallback;-><init>(Lcom/tmc/network/INetworkCallback;)V

    const/4 v1, 0x0

    .line 17
    :try_start_0
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    .line 18
    invoke-direct {p0, p1, p3}, Lcom/tmc/network/HttpRequestor;->getHttpUrl(Ljava/lang/String;Ljava/util/Map;)Lokhttp3/HttpUrl;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v2, p1}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 19
    invoke-direct {p0, p2}, Lcom/tmc/network/HttpRequestor;->getHeaders(Ljava/util/Map;)Lokhttp3/Headers;

    move-result-object p3

    invoke-virtual {p1, p3}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 20
    invoke-virtual {p1, p4}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 21
    iget-object p3, p0, Lcom/tmc/network/HttpRequestor;->httpClient:Lcom/tmc/network/HttpClient;

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/tmc/network/HttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 22
    :cond_0
    :try_start_1
    const-string p3, "m-timeout"

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, v1}, Lcom/tmc/network/HttpRequestor;->getCallTimeout(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    goto :goto_1

    .line 23
    :cond_2
    invoke-interface {p1}, Lokhttp3/Call;->timeout()Lokio/Timeout;

    move-result-object p3

    if-nez p3, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3, v1, v2, p2}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    :goto_1
    if-nez p1, :cond_4

    goto :goto_3

    .line 24
    :cond_4
    invoke-static {p1, v0}, Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;->enqueue(Lokhttp3/Call;Lokhttp3/Callback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p2

    move-object v1, p1

    goto :goto_2

    :catch_1
    move-exception p2

    .line 25
    :goto_2
    sget-object p1, Lrf/b;->a:Lrf/b;

    invoke-virtual {p1, p2}, Lrf/b;->e(Ljava/lang/Throwable;)V

    .line 26
    invoke-interface {p5, v1, p2}, Lcom/tmc/network/INetworkCallback;->onFailure(Lokhttp3/Call;Ljava/lang/Exception;)V

    move-object p1, v1

    :goto_3
    return-object p1
.end method

.method private final post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lokhttp3/RequestBody;Lokhttp3/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lokhttp3/RequestBody;",
            "Lokhttp3/Callback;",
            ")V"
        }
    .end annotation

    .line 5
    :try_start_0
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 6
    invoke-direct {p0, p1, p3}, Lcom/tmc/network/HttpRequestor;->getHttpUrl(Ljava/lang/String;Ljava/util/Map;)Lokhttp3/HttpUrl;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 7
    invoke-direct {p0, p2}, Lcom/tmc/network/HttpRequestor;->getHeaders(Ljava/util/Map;)Lokhttp3/Headers;

    move-result-object p2

    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 8
    invoke-virtual {p1, p4}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 9
    iget-object p2, p0, Lcom/tmc/network/HttpRequestor;->httpClient:Lcom/tmc/network/HttpClient;

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/tmc/network/HttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    invoke-static {p1, p5}, Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;->enqueue(Lokhttp3/Call;Lokhttp3/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    sget-object p2, Lrf/b;->a:Lrf/b;

    invoke-virtual {p2, p1}, Lrf/b;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final delete(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/tmc/network/INetworkCallback;)Lokhttp3/Call;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tmc/network/INetworkCallback;",
            ")",
            "Lokhttp3/Call;"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 12
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 13
    :cond_0
    move-object v2, p2

    check-cast v2, Ljava/util/Map;

    sget-object p2, Lcom/tmc/network/HttpRequestor;->CONTENT_TYPE:Ljava/lang/String;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    .line 14
    sget-object v0, Lcom/tmc/network/ContentType;->FORM:Lcom/tmc/network/ContentType;

    invoke-virtual {v0}, Lcom/tmc/network/ContentType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    :cond_1
    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-direct {p0, p4}, Lcom/tmc/network/HttpRequestor;->getFormBody(Ljava/util/Map;)Lokhttp3/FormBody;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/tmc/network/HttpRequestor;->delete(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lokhttp3/RequestBody;Lcom/tmc/network/INetworkCallback;)Lokhttp3/Call;

    move-result-object p1

    return-object p1
.end method

.method public final delete(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lokhttp3/RequestBody;Lcom/tmc/network/INetworkCallback;)Lokhttp3/Call;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lokhttp3/RequestBody;",
            "Lcom/tmc/network/INetworkCallback;",
            ")",
            "Lokhttp3/Call;"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestBody"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance v0, Lcom/tmc/network/NetworkCallback;

    invoke-direct {v0, p5}, Lcom/tmc/network/NetworkCallback;-><init>(Lcom/tmc/network/INetworkCallback;)V

    const/4 v1, 0x0

    .line 17
    :try_start_0
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    .line 18
    invoke-direct {p0, p1, p3}, Lcom/tmc/network/HttpRequestor;->getHttpUrl(Ljava/lang/String;Ljava/util/Map;)Lokhttp3/HttpUrl;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v2, p1}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 19
    invoke-direct {p0, p2}, Lcom/tmc/network/HttpRequestor;->getHeaders(Ljava/util/Map;)Lokhttp3/Headers;

    move-result-object p3

    invoke-virtual {p1, p3}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 20
    invoke-virtual {p1, p4}, Lokhttp3/Request$Builder;->delete(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 21
    iget-object p3, p0, Lcom/tmc/network/HttpRequestor;->httpClient:Lcom/tmc/network/HttpClient;

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/tmc/network/HttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 22
    :cond_0
    :try_start_1
    const-string p3, "m-timeout"

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, v1}, Lcom/tmc/network/HttpRequestor;->getCallTimeout(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    goto :goto_1

    .line 23
    :cond_2
    invoke-interface {p1}, Lokhttp3/Call;->timeout()Lokio/Timeout;

    move-result-object p3

    if-nez p3, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3, v1, v2, p2}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    :goto_1
    if-nez p1, :cond_4

    goto :goto_3

    .line 24
    :cond_4
    invoke-static {p1, v0}, Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;->enqueue(Lokhttp3/Call;Lokhttp3/Callback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p2

    move-object v1, p1

    goto :goto_2

    :catch_1
    move-exception p2

    .line 25
    :goto_2
    sget-object p1, Lrf/b;->a:Lrf/b;

    invoke-virtual {p1, p2}, Lrf/b;->e(Ljava/lang/Throwable;)V

    .line 26
    invoke-interface {p5, v1, p2}, Lcom/tmc/network/INetworkCallback;->onFailure(Lokhttp3/Call;Ljava/lang/Exception;)V

    move-object p1, v1

    :goto_3
    return-object p1
.end method

.method public final delete(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lokhttp3/Callback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lokhttp3/Callback;",
            ")V"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 1
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 2
    :cond_0
    move-object v2, p2

    check-cast v2, Ljava/util/Map;

    sget-object p2, Lcom/tmc/network/HttpRequestor;->CONTENT_TYPE:Ljava/lang/String;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    .line 3
    sget-object v0, Lcom/tmc/network/ContentType;->FORM:Lcom/tmc/network/ContentType;

    invoke-virtual {v0}, Lcom/tmc/network/ContentType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_1
    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-direct {p0, p4}, Lcom/tmc/network/HttpRequestor;->getFormBody(Ljava/util/Map;)Lokhttp3/FormBody;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/tmc/network/HttpRequestor;->delete(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lokhttp3/RequestBody;Lokhttp3/Callback;)V

    return-void
.end method

.method public final delete(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lokhttp3/RequestBody;Lokhttp3/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lokhttp3/RequestBody;",
            "Lokhttp3/Callback;",
            ")V"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestBody"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    :try_start_0
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 6
    invoke-direct {p0, p1, p3}, Lcom/tmc/network/HttpRequestor;->getHttpUrl(Ljava/lang/String;Ljava/util/Map;)Lokhttp3/HttpUrl;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 7
    invoke-direct {p0, p2}, Lcom/tmc/network/HttpRequestor;->getHeaders(Ljava/util/Map;)Lokhttp3/Headers;

    move-result-object p2

    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 8
    invoke-virtual {p1, p4}, Lokhttp3/Request$Builder;->delete(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 9
    iget-object p2, p0, Lcom/tmc/network/HttpRequestor;->httpClient:Lcom/tmc/network/HttpClient;

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/tmc/network/HttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    invoke-static {p1, p5}, Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;->enqueue(Lokhttp3/Call;Lokhttp3/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    sget-object p2, Lrf/b;->a:Lrf/b;

    invoke-virtual {p2, p1}, Lrf/b;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final get(Ljava/lang/String;Ljava/util/Map;Lcom/tmc/network/INetworkCallback;)Lokhttp3/Call;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tmc/network/INetworkCallback;",
            ")",
            "Lokhttp3/Call;"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/tmc/network/HttpRequestor;->get(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/tmc/network/INetworkCallback;)Lokhttp3/Call;

    move-result-object p1

    return-object p1
.end method

.method public final get(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/tmc/network/INetworkCallback;)Lokhttp3/Call;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tmc/network/INetworkCallback;",
            ")",
            "Lokhttp3/Call;"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance v0, Lcom/tmc/network/NetworkCallback;

    invoke-direct {v0, p4}, Lcom/tmc/network/NetworkCallback;-><init>(Lcom/tmc/network/INetworkCallback;)V

    const/4 v1, 0x0

    .line 11
    :try_start_0
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    .line 12
    invoke-direct {p0, p1, p3}, Lcom/tmc/network/HttpRequestor;->getHttpUrl(Ljava/lang/String;Ljava/util/Map;)Lokhttp3/HttpUrl;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v2, p1}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 13
    invoke-direct {p0, p2}, Lcom/tmc/network/HttpRequestor;->getHeaders(Ljava/util/Map;)Lokhttp3/Headers;

    move-result-object p3

    invoke-virtual {p1, p3}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 14
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object p1

    .line 15
    iget-object p3, p0, Lcom/tmc/network/HttpRequestor;->httpClient:Lcom/tmc/network/HttpClient;

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/tmc/network/HttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    :try_start_1
    const-string p3, "m-timeout"

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, v1}, Lcom/tmc/network/HttpRequestor;->getCallTimeout(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    goto :goto_1

    .line 17
    :cond_2
    invoke-interface {p1}, Lokhttp3/Call;->timeout()Lokio/Timeout;

    move-result-object p3

    if-nez p3, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3, v1, v2, p2}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    :goto_1
    if-nez p1, :cond_4

    goto :goto_3

    .line 18
    :cond_4
    invoke-static {p1, v0}, Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;->enqueue(Lokhttp3/Call;Lokhttp3/Callback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p2

    move-object v1, p1

    goto :goto_2

    :catch_1
    move-exception p2

    .line 19
    :goto_2
    invoke-interface {p4, v1, p2}, Lcom/tmc/network/INetworkCallback;->onFailure(Lokhttp3/Call;Ljava/lang/Exception;)V

    .line 20
    sget-object p1, Lrf/b;->a:Lrf/b;

    invoke-virtual {p1, p2}, Lrf/b;->e(Ljava/lang/Throwable;)V

    move-object p1, v1

    :goto_3
    return-object p1
.end method

.method public final get(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lokhttp3/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lokhttp3/Callback;",
            ")V"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    :try_start_0
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 3
    invoke-direct {p0, p1, p3}, Lcom/tmc/network/HttpRequestor;->getHttpUrl(Ljava/lang/String;Ljava/util/Map;)Lokhttp3/HttpUrl;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 4
    invoke-direct {p0, p2}, Lcom/tmc/network/HttpRequestor;->getHeaders(Ljava/util/Map;)Lokhttp3/Headers;

    move-result-object p2

    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object p1

    .line 6
    iget-object p2, p0, Lcom/tmc/network/HttpRequestor;->httpClient:Lcom/tmc/network/HttpClient;

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/tmc/network/HttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {p1, p4}, Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;->enqueue(Lokhttp3/Call;Lokhttp3/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    sget-object p2, Lrf/b;->a:Lrf/b;

    invoke-virtual {p2, p1}, Lrf/b;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final get(Ljava/lang/String;Ljava/util/Map;Lokhttp3/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lokhttp3/Callback;",
            ")V"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/tmc/network/HttpRequestor;->get(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lokhttp3/Callback;)V

    return-void
.end method

.method public final getCallTimeout(Ljava/lang/String;)Ljava/lang/Long;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    goto :goto_1

    .line 5
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    const-wide/16 v3, 0x0

    .line 10
    .line 11
    cmp-long p1, v1, v3

    .line 12
    .line 13
    if-gtz p1, :cond_1

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_1
    const-wide/32 v3, 0x15f90

    .line 17
    .line 18
    .line 19
    cmp-long p1, v1, v3

    .line 20
    .line 21
    if-ltz p1, :cond_2

    .line 22
    .line 23
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    return-object p1

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    goto :goto_0

    .line 30
    :cond_2
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 31
    .line 32
    .line 33
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    goto :goto_1

    .line 35
    :goto_0
    sget-object v1, Lrf/b;->a:Lrf/b;

    .line 36
    .line 37
    invoke-virtual {v1, p1}, Lrf/b;->e(Ljava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    :goto_1
    return-object v0
.end method

.method public final getHttpClient()Lcom/tmc/network/HttpClient;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tmc/network/HttpRequestor;->httpClient:Lcom/tmc/network/HttpClient;

    .line 2
    .line 3
    return-object v0
.end method

.method public final head(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/tmc/network/INetworkCallback;)Lokhttp3/Call;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tmc/network/INetworkCallback;",
            ")",
            "Lokhttp3/Call;"
        }
    .end annotation

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "callback"

    .line 7
    .line 8
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    :try_start_0
    new-instance v1, Lcom/tmc/network/NetworkCallback;

    .line 13
    .line 14
    invoke-direct {v1, p4}, Lcom/tmc/network/NetworkCallback;-><init>(Lcom/tmc/network/INetworkCallback;)V

    .line 15
    .line 16
    .line 17
    new-instance v2, Lokhttp3/Request$Builder;

    .line 18
    .line 19
    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, p1, p3}, Lcom/tmc/network/HttpRequestor;->getHttpUrl(Ljava/lang/String;Ljava/util/Map;)Lokhttp3/HttpUrl;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, p1}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-direct {p0, p2}, Lcom/tmc/network/HttpRequestor;->getHeaders(Ljava/util/Map;)Lokhttp3/Headers;

    .line 34
    .line 35
    .line 36
    move-result-object p3

    .line 37
    invoke-virtual {p1, p3}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->head()Lokhttp3/Request$Builder;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iget-object p3, p0, Lcom/tmc/network/HttpRequestor;->httpClient:Lcom/tmc/network/HttpClient;

    .line 46
    .line 47
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p3, p1}, Lcom/tmc/network/HttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    .line 52
    .line 53
    .line 54
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 55
    if-nez p2, :cond_0

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    :try_start_1
    const-string p3, "m-timeout"

    .line 59
    .line 60
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    move-object v0, p2

    .line 65
    check-cast v0, Ljava/lang/String;

    .line 66
    .line 67
    :goto_0
    invoke-virtual {p0, v0}, Lcom/tmc/network/HttpRequestor;->getCallTimeout(Ljava/lang/String;)Ljava/lang/Long;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    if-nez p2, :cond_1

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_1
    if-nez p1, :cond_2

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_2
    invoke-interface {p1}, Lokhttp3/Call;->timeout()Lokio/Timeout;

    .line 78
    .line 79
    .line 80
    move-result-object p3

    .line 81
    if-nez p3, :cond_3

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 85
    .line 86
    .line 87
    move-result-wide v2

    .line 88
    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 89
    .line 90
    invoke-virtual {p3, v2, v3, p2}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 91
    .line 92
    .line 93
    :goto_1
    if-nez p1, :cond_4

    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_4
    invoke-static {p1, v1}, Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;->enqueue(Lokhttp3/Call;Lokhttp3/Callback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 97
    .line 98
    .line 99
    goto :goto_3

    .line 100
    :catch_0
    move-exception p2

    .line 101
    move-object v0, p1

    .line 102
    goto :goto_2

    .line 103
    :catch_1
    move-exception p2

    .line 104
    :goto_2
    invoke-interface {p4, v0, p2}, Lcom/tmc/network/INetworkCallback;->onFailure(Lokhttp3/Call;Ljava/lang/Exception;)V

    .line 105
    .line 106
    .line 107
    sget-object p1, Lrf/b;->a:Lrf/b;

    .line 108
    .line 109
    invoke-virtual {p1, p2}, Lrf/b;->e(Ljava/lang/Throwable;)V

    .line 110
    .line 111
    .line 112
    move-object p1, v0

    .line 113
    :goto_3
    return-object p1
.end method

.method public final init(Landroid/content/Context;Ljava/lang/String;Lcom/transsion/api/gateway/config/WorkMode;Lcom/tmc/network/ProgressListener;)V
    .locals 3

    .line 20
    :try_start_0
    iget-object v0, p0, Lcom/tmc/network/HttpRequestor;->isInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 21
    :cond_0
    sget-object v0, Lrf/b;->a:Lrf/b;

    const-string v1, "HttpRequestor"

    const-string v2, "HttpRequestor will init"

    invoke-virtual {v0, v1, v2}, Lrf/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    :try_start_1
    const-string v1, "HttpRequestor"

    const-string v2, "HttpRequestor start init."

    invoke-virtual {v0, v1, v2}, Lrf/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/tmc/network/HttpRequestor;->isInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 25
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    .line 26
    :cond_1
    :try_start_3
    sget-object v0, Lcom/tmc/network/NetworkConfig;->INSTANCE:Lcom/tmc/network/NetworkConfig;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tmc/network/NetworkConfig;->setNetworkMonitorEnable(Z)V

    .line 27
    invoke-static {p1, p2, p3}, Lcom/transsion/api/gateway/GateWaySdk;->init(Landroid/content/Context;Ljava/lang/String;Lcom/transsion/api/gateway/config/WorkMode;)V

    .line 28
    sget-object p2, Lcom/tmc/network/HttpClient;->Companion:Lcom/tmc/network/HttpClient$Companion;

    invoke-virtual {p2, p4}, Lcom/tmc/network/HttpClient$Companion;->setProgressListener(Lcom/tmc/network/ProgressListener;)V

    .line 29
    sget-object p2, Lcom/tmc/network/NetworkMonitor;->INSTANCE:Lcom/tmc/network/NetworkMonitor;

    invoke-virtual {p2, p1}, Lcom/tmc/network/NetworkMonitor;->init(Landroid/content/Context;)V

    .line 30
    sget-object p2, Lcom/tmc/network/strategy/d;->b:Lcom/tmc/network/strategy/d$a;

    invoke-virtual {p2}, Lcom/tmc/network/strategy/d$a;->a()Lcom/tmc/network/strategy/d;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/tmc/network/strategy/d;->a(Landroid/content/Context;)V

    .line 31
    sget-object p1, Lcom/tmc/network/NetworkAdapter;->INSTANCE:Lcom/tmc/network/NetworkAdapter;

    invoke-virtual {p1}, Lcom/tmc/network/NetworkAdapter;->init()V

    .line 32
    iget-object p1, p0, Lcom/tmc/network/HttpRequestor;->isInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 33
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 34
    :try_start_4
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 35
    :goto_0
    sget-object p2, Lrf/b;->a:Lrf/b;

    invoke-virtual {p2, p1}, Lrf/b;->e(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public final init(Landroid/content/Context;Ljava/lang/String;Lcom/transsion/api/gateway/config/WorkMode;Lcom/tmc/network/ProgressListener;Z)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/tmc/network/HttpRequestor;->isInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lrf/b;->a:Lrf/b;

    const-string v1, "HttpRequestor"

    const-string v2, "HttpRequestor will init"

    invoke-virtual {v0, v1, v2}, Lrf/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :try_start_1
    const-string v1, "HttpRequestor"

    .line 5
    const-string v2, "HttpRequestor start init. isNetworkMonitorEnable ="

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->q(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-virtual {v0, v1, v2}, Lrf/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcom/tmc/network/HttpRequestor;->isInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 8
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    .line 9
    :cond_1
    :try_start_3
    sget-object v1, Lcom/tmc/network/NetworkConfig;->INSTANCE:Lcom/tmc/network/NetworkConfig;

    invoke-virtual {v1, p5}, Lcom/tmc/network/NetworkConfig;->setNetworkMonitorEnable(Z)V

    .line 10
    invoke-static {p1, p2, p3}, Lcom/transsion/api/gateway/GateWaySdk;->init(Landroid/content/Context;Ljava/lang/String;Lcom/transsion/api/gateway/config/WorkMode;)V

    .line 11
    const-string p2, "HttpRequestor"

    const-string p3, "HttpRequestor GateWaySdk init finish"

    invoke-virtual {v0, p2, p3}, Lrf/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    sget-object p2, Lcom/tmc/network/HttpClient;->Companion:Lcom/tmc/network/HttpClient$Companion;

    invoke-virtual {p2, p4}, Lcom/tmc/network/HttpClient$Companion;->setProgressListener(Lcom/tmc/network/ProgressListener;)V

    .line 13
    sget-object p2, Lcom/tmc/network/NetworkMonitor;->INSTANCE:Lcom/tmc/network/NetworkMonitor;

    invoke-virtual {p2, p1}, Lcom/tmc/network/NetworkMonitor;->init(Landroid/content/Context;)V

    .line 14
    sget-object p2, Lcom/tmc/network/strategy/d;->b:Lcom/tmc/network/strategy/d$a;

    invoke-virtual {p2}, Lcom/tmc/network/strategy/d$a;->a()Lcom/tmc/network/strategy/d;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/tmc/network/strategy/d;->a(Landroid/content/Context;)V

    .line 15
    sget-object p1, Lcom/tmc/network/NetworkAdapter;->INSTANCE:Lcom/tmc/network/NetworkAdapter;

    invoke-virtual {p1}, Lcom/tmc/network/NetworkAdapter;->init()V

    .line 16
    iget-object p1, p0, Lcom/tmc/network/HttpRequestor;->isInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 17
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 18
    :try_start_4
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 19
    :goto_0
    sget-object p2, Lrf/b;->a:Lrf/b;

    invoke-virtual {p2, p1}, Lrf/b;->e(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public final post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/tmc/network/INetworkCallback;)Lokhttp3/Call;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tmc/network/INetworkCallback;",
            ")",
            "Lokhttp3/Call;"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 12
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 13
    :cond_0
    move-object v2, p2

    check-cast v2, Ljava/util/Map;

    sget-object p2, Lcom/tmc/network/HttpRequestor;->CONTENT_TYPE:Ljava/lang/String;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    .line 14
    sget-object v0, Lcom/tmc/network/ContentType;->FORM:Lcom/tmc/network/ContentType;

    invoke-virtual {v0}, Lcom/tmc/network/ContentType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    :cond_1
    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-direct {p0, p4}, Lcom/tmc/network/HttpRequestor;->getFormBody(Ljava/util/Map;)Lokhttp3/FormBody;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/tmc/network/HttpRequestor;->post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lokhttp3/RequestBody;Lcom/tmc/network/INetworkCallback;)Lokhttp3/Call;

    move-result-object p1

    return-object p1
.end method

.method public final post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lokhttp3/Callback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lokhttp3/Callback;",
            ")V"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 1
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 2
    :cond_0
    move-object v2, p2

    check-cast v2, Ljava/util/Map;

    sget-object p2, Lcom/tmc/network/HttpRequestor;->CONTENT_TYPE:Ljava/lang/String;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    .line 3
    sget-object v0, Lcom/tmc/network/ContentType;->FORM:Lcom/tmc/network/ContentType;

    invoke-virtual {v0}, Lcom/tmc/network/ContentType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_1
    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-direct {p0, p4}, Lcom/tmc/network/HttpRequestor;->getFormBody(Ljava/util/Map;)Lokhttp3/FormBody;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/tmc/network/HttpRequestor;->post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lokhttp3/RequestBody;Lokhttp3/Callback;)V

    return-void
.end method

.method public final postJSON(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Object;Lcom/tmc/network/INetworkCallback;)Lokhttp3/Call;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/tmc/network/INetworkCallback;",
            ")",
            "Lokhttp3/Call;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 5
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 6
    :cond_0
    move-object v2, p2

    check-cast v2, Ljava/util/Map;

    sget-object p2, Lcom/tmc/network/HttpRequestor;->CONTENT_TYPE:Ljava/lang/String;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    .line 7
    sget-object v0, Lcom/tmc/network/ContentType;->JSON:Lcom/tmc/network/ContentType;

    invoke-virtual {v0}, Lcom/tmc/network/ContentType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_1
    invoke-direct {p0, p4}, Lcom/tmc/network/HttpRequestor;->getJSONBody(Ljava/lang/Object;)Lokhttp3/RequestBody;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/tmc/network/HttpRequestor;->post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lokhttp3/RequestBody;Lcom/tmc/network/INetworkCallback;)Lokhttp3/Call;

    move-result-object p1

    return-object p1
.end method

.method public final postJSON(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Object;Lokhttp3/Callback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Lokhttp3/Callback;",
            ")V"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 1
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 2
    :cond_0
    move-object v2, p2

    check-cast v2, Ljava/util/Map;

    sget-object p2, Lcom/tmc/network/HttpRequestor;->CONTENT_TYPE:Ljava/lang/String;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    .line 3
    sget-object v0, Lcom/tmc/network/ContentType;->JSON:Lcom/tmc/network/ContentType;

    invoke-virtual {v0}, Lcom/tmc/network/ContentType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_1
    invoke-direct {p0, p4}, Lcom/tmc/network/HttpRequestor;->getJSONBody(Ljava/lang/Object;)Lokhttp3/RequestBody;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/tmc/network/HttpRequestor;->post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lokhttp3/RequestBody;Lokhttp3/Callback;)V

    return-void
.end method

.method public final postMultipart(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/tmc/network/INetworkCallback;)Lokhttp3/Call;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tmc/network/INetworkCallback;",
            ")",
            "Lokhttp3/Call;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 5
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 6
    :cond_0
    move-object v2, p2

    check-cast v2, Ljava/util/Map;

    sget-object p2, Lcom/tmc/network/HttpRequestor;->CONTENT_TYPE:Ljava/lang/String;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    .line 7
    sget-object v0, Lcom/tmc/network/ContentType;->MULTIPART:Lcom/tmc/network/ContentType;

    invoke-virtual {v0}, Lcom/tmc/network/ContentType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_1
    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-direct {p0, p4}, Lcom/tmc/network/HttpRequestor;->getMultipartBody(Ljava/util/Map;)Lokhttp3/MultipartBody;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/tmc/network/HttpRequestor;->post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lokhttp3/RequestBody;Lcom/tmc/network/INetworkCallback;)Lokhttp3/Call;

    move-result-object p1

    return-object p1
.end method

.method public final postMultipart(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lokhttp3/Callback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lokhttp3/Callback;",
            ")V"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 1
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 2
    :cond_0
    move-object v2, p2

    check-cast v2, Ljava/util/Map;

    sget-object p2, Lcom/tmc/network/HttpRequestor;->CONTENT_TYPE:Ljava/lang/String;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    .line 3
    sget-object v0, Lcom/tmc/network/ContentType;->MULTIPART:Lcom/tmc/network/ContentType;

    invoke-virtual {v0}, Lcom/tmc/network/ContentType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_1
    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-direct {p0, p4}, Lcom/tmc/network/HttpRequestor;->getMultipartBody(Ljava/util/Map;)Lokhttp3/MultipartBody;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/tmc/network/HttpRequestor;->post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lokhttp3/RequestBody;Lokhttp3/Callback;)V

    return-void
.end method

.method public final postRequestBody(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lokhttp3/RequestBody;Lcom/tmc/network/INetworkCallback;)Lokhttp3/Call;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lokhttp3/RequestBody;",
            "Lcom/tmc/network/INetworkCallback;",
            ")",
            "Lokhttp3/Call;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestBody"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 5
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 6
    :cond_0
    move-object v2, p2

    check-cast v2, Ljava/util/Map;

    sget-object p2, Lcom/tmc/network/HttpRequestor;->CONTENT_TYPE:Ljava/lang/String;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    .line 7
    sget-object v0, Lcom/tmc/network/ContentType;->MULTIPART:Lcom/tmc/network/ContentType;

    invoke-virtual {v0}, Lcom/tmc/network/ContentType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 8
    invoke-direct/range {v0 .. v5}, Lcom/tmc/network/HttpRequestor;->post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lokhttp3/RequestBody;Lcom/tmc/network/INetworkCallback;)Lokhttp3/Call;

    move-result-object p1

    return-object p1
.end method

.method public final postRequestBody(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lokhttp3/RequestBody;Lokhttp3/Callback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lokhttp3/RequestBody;",
            "Lokhttp3/Callback;",
            ")V"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestBody"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 1
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 2
    :cond_0
    move-object v2, p2

    check-cast v2, Ljava/util/Map;

    sget-object p2, Lcom/tmc/network/HttpRequestor;->CONTENT_TYPE:Ljava/lang/String;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    .line 3
    sget-object v0, Lcom/tmc/network/ContentType;->MULTIPART:Lcom/tmc/network/ContentType;

    invoke-virtual {v0}, Lcom/tmc/network/ContentType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 4
    invoke-direct/range {v0 .. v5}, Lcom/tmc/network/HttpRequestor;->post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lokhttp3/RequestBody;Lokhttp3/Callback;)V

    return-void
.end method

.method public final postV2(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/tmc/network/INetworkCallback;)Lokhttp3/Call;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tmc/network/INetworkCallback;",
            ")",
            "Lokhttp3/Call;"
        }
    .end annotation

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "callback"

    .line 7
    .line 8
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    if-nez p2, :cond_0

    .line 12
    .line 13
    new-instance p2, Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 16
    .line 17
    .line 18
    :cond_0
    move-object v2, p2

    .line 19
    check-cast v2, Ljava/util/Map;

    .line 20
    .line 21
    sget-object p2, Lcom/tmc/network/HttpRequestor;->CONTENT_TYPE:Ljava/lang/String;

    .line 22
    .line 23
    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Ljava/lang/String;

    .line 28
    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    sget-object v0, Lcom/tmc/network/ContentType;->FORM:Lcom/tmc/network/ContentType;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/tmc/network/ContentType;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    :cond_1
    sget-boolean p2, Lcom/tmc/network/HttpRequestor;->enablePostMode:Z

    .line 41
    .line 42
    if-eqz p2, :cond_2

    .line 43
    .line 44
    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    invoke-direct {p0, v2, p4}, Lcom/tmc/network/HttpRequestor;->buildRequestBody(Ljava/util/Map;Ljava/util/Map;)Lokhttp3/RequestBody;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    move-object v0, p0

    .line 52
    move-object v1, p1

    .line 53
    move-object v3, p3

    .line 54
    move-object v5, p5

    .line 55
    invoke-direct/range {v0 .. v5}, Lcom/tmc/network/HttpRequestor;->post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lokhttp3/RequestBody;Lcom/tmc/network/INetworkCallback;)Lokhttp3/Call;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    goto :goto_0

    .line 60
    :cond_2
    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    invoke-direct {p0, p4}, Lcom/tmc/network/HttpRequestor;->getFormBody(Ljava/util/Map;)Lokhttp3/FormBody;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    move-object v0, p0

    .line 68
    move-object v1, p1

    .line 69
    move-object v3, p3

    .line 70
    move-object v5, p5

    .line 71
    invoke-direct/range {v0 .. v5}, Lcom/tmc/network/HttpRequestor;->post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lokhttp3/RequestBody;Lcom/tmc/network/INetworkCallback;)Lokhttp3/Call;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    :goto_0
    return-object p1
.end method

.method public final put(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/tmc/network/INetworkCallback;)Lokhttp3/Call;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tmc/network/INetworkCallback;",
            ")",
            "Lokhttp3/Call;"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 12
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 13
    :cond_0
    move-object v2, p2

    check-cast v2, Ljava/util/Map;

    sget-object p2, Lcom/tmc/network/HttpRequestor;->CONTENT_TYPE:Ljava/lang/String;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    .line 14
    sget-object v0, Lcom/tmc/network/ContentType;->FORM:Lcom/tmc/network/ContentType;

    invoke-virtual {v0}, Lcom/tmc/network/ContentType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    :cond_1
    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-direct {p0, p4}, Lcom/tmc/network/HttpRequestor;->getFormBody(Ljava/util/Map;)Lokhttp3/FormBody;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/tmc/network/HttpRequestor;->put(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lokhttp3/RequestBody;Lcom/tmc/network/INetworkCallback;)Lokhttp3/Call;

    move-result-object p1

    return-object p1
.end method

.method public final put(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lokhttp3/RequestBody;Lcom/tmc/network/INetworkCallback;)Lokhttp3/Call;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lokhttp3/RequestBody;",
            "Lcom/tmc/network/INetworkCallback;",
            ")",
            "Lokhttp3/Call;"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestBody"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance v0, Lcom/tmc/network/NetworkCallback;

    invoke-direct {v0, p5}, Lcom/tmc/network/NetworkCallback;-><init>(Lcom/tmc/network/INetworkCallback;)V

    const/4 v1, 0x0

    .line 17
    :try_start_0
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    .line 18
    invoke-direct {p0, p1, p3}, Lcom/tmc/network/HttpRequestor;->getHttpUrl(Ljava/lang/String;Ljava/util/Map;)Lokhttp3/HttpUrl;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v2, p1}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 19
    invoke-direct {p0, p2}, Lcom/tmc/network/HttpRequestor;->getHeaders(Ljava/util/Map;)Lokhttp3/Headers;

    move-result-object p3

    invoke-virtual {p1, p3}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 20
    invoke-virtual {p1, p4}, Lokhttp3/Request$Builder;->put(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 21
    iget-object p3, p0, Lcom/tmc/network/HttpRequestor;->httpClient:Lcom/tmc/network/HttpClient;

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/tmc/network/HttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 22
    :cond_0
    :try_start_1
    const-string p3, "m-timeout"

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, v1}, Lcom/tmc/network/HttpRequestor;->getCallTimeout(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    goto :goto_1

    .line 23
    :cond_2
    invoke-interface {p1}, Lokhttp3/Call;->timeout()Lokio/Timeout;

    move-result-object p3

    if-nez p3, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3, v1, v2, p2}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    :goto_1
    if-nez p1, :cond_4

    goto :goto_3

    .line 24
    :cond_4
    invoke-static {p1, v0}, Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;->enqueue(Lokhttp3/Call;Lokhttp3/Callback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p2

    move-object v1, p1

    goto :goto_2

    :catch_1
    move-exception p2

    .line 25
    :goto_2
    sget-object p1, Lrf/b;->a:Lrf/b;

    invoke-virtual {p1, p2}, Lrf/b;->e(Ljava/lang/Throwable;)V

    .line 26
    invoke-interface {p5, v1, p2}, Lcom/tmc/network/INetworkCallback;->onFailure(Lokhttp3/Call;Ljava/lang/Exception;)V

    move-object p1, v1

    :goto_3
    return-object p1
.end method

.method public final put(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lokhttp3/Callback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lokhttp3/Callback;",
            ")V"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 1
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 2
    :cond_0
    move-object v2, p2

    check-cast v2, Ljava/util/Map;

    sget-object p2, Lcom/tmc/network/HttpRequestor;->CONTENT_TYPE:Ljava/lang/String;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    .line 3
    sget-object v0, Lcom/tmc/network/ContentType;->FORM:Lcom/tmc/network/ContentType;

    invoke-virtual {v0}, Lcom/tmc/network/ContentType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_1
    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-direct {p0, p4}, Lcom/tmc/network/HttpRequestor;->getFormBody(Ljava/util/Map;)Lokhttp3/FormBody;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/tmc/network/HttpRequestor;->put(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lokhttp3/RequestBody;Lokhttp3/Callback;)V

    return-void
.end method

.method public final put(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lokhttp3/RequestBody;Lokhttp3/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lokhttp3/RequestBody;",
            "Lokhttp3/Callback;",
            ")V"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestBody"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    :try_start_0
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 6
    invoke-direct {p0, p1, p3}, Lcom/tmc/network/HttpRequestor;->getHttpUrl(Ljava/lang/String;Ljava/util/Map;)Lokhttp3/HttpUrl;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 7
    invoke-direct {p0, p2}, Lcom/tmc/network/HttpRequestor;->getHeaders(Ljava/util/Map;)Lokhttp3/Headers;

    move-result-object p2

    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 8
    invoke-virtual {p1, p4}, Lokhttp3/Request$Builder;->put(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 9
    iget-object p2, p0, Lcom/tmc/network/HttpRequestor;->httpClient:Lcom/tmc/network/HttpClient;

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/tmc/network/HttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    invoke-static {p1, p5}, Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;->enqueue(Lokhttp3/Call;Lokhttp3/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    sget-object p2, Lrf/b;->a:Lrf/b;

    invoke-virtual {p2, p1}, Lrf/b;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final setAppInfo(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 1
    const-string v0, "appName"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "appVersion"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/tmc/network/HttpRequestor;->appName:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/tmc/network/HttpRequestor;->appVersion:Ljava/lang/String;

    .line 14
    .line 15
    iput p3, p0, Lcom/tmc/network/HttpRequestor;->versionCode:I

    .line 16
    .line 17
    return-void
.end method

.method public final setCountry(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "country"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/tmc/network/HttpRequestor;->country:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setGateWayActivateSignConfig(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "hostList"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "pathList"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1, p2}, Lcom/transsion/api/gateway/GateWaySdk;->setActivateSignConfig(Ljava/util/List;Ljava/util/List;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final setGatewayAlwaysAccess(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/tmc/network/HttpRequestor;->ifGatewayAlwaysAccess:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setIfCommonHeader(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/tmc/network/HttpRequestor;->ifCommonHeader:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setLanguage(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "language"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/tmc/network/HttpRequestor;->language:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method
