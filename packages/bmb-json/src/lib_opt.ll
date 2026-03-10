; ModuleID = 'ecosystem/gotgan-packages/packages/bmb-json/src/lib.ll'
source_filename = "ecosystem/gotgan-packages/packages/bmb-json/src/lib.ll"

@str_data_0 = private unnamed_addr constant [3 x i8] c"42\00"
@str_bmb_0 = private unnamed_addr constant { ptr, i64, i64 } { ptr @str_data_0, i64 2, i64 2 }
@str_data_1 = private unnamed_addr constant [10 x i8] c"[1, 2, 3]\00"
@str_bmb_1 = private unnamed_addr constant { ptr, i64, i64 } { ptr @str_data_1, i64 9, i64 9 }
@str_data_2 = private unnamed_addr constant [17 x i8] c"{\22a\22: 1, \22b\22: 2}\00"
@str_bmb_2 = private unnamed_addr constant { ptr, i64, i64 } { ptr @str_data_2, i64 16, i64 16 }
@str_data_3 = private unnamed_addr constant [22 x i8] c"[1, [2, 3], {\22x\22: 4}]\00"
@str_bmb_3 = private unnamed_addr constant { ptr, i64, i64 } { ptr @str_data_3, i64 21, i64 21 }
@str_data_4 = private unnamed_addr constant [5 x i8] c"null\00"
@str_bmb_4 = private unnamed_addr constant { ptr, i64, i64 } { ptr @str_data_4, i64 4, i64 4 }
@str_data_5 = private unnamed_addr constant [5 x i8] c"true\00"
@str_bmb_5 = private unnamed_addr constant { ptr, i64, i64 } { ptr @str_data_5, i64 4, i64 4 }
@str_data_6 = private unnamed_addr constant [8 x i8] c"\22hello\22\00"
@str_bmb_6 = private unnamed_addr constant { ptr, i64, i64 } { ptr @str_data_6, i64 7, i64 7 }
@str_data_7 = private unnamed_addr constant [3 x i8] c"[]\00"
@str_bmb_7 = private unnamed_addr constant { ptr, i64, i64 } { ptr @str_data_7, i64 2, i64 2 }
@str_data_8 = private unnamed_addr constant [3 x i8] c"{}\00"
@str_bmb_8 = private unnamed_addr constant { ptr, i64, i64 } { ptr @str_data_8, i64 2, i64 2 }
@str_data_9 = private unnamed_addr constant [32 x i8] c"[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]\00"
@str_bmb_9 = private unnamed_addr constant { ptr, i64, i64 } { ptr @str_data_9, i64 31, i64 31 }
@str_data_10 = private unnamed_addr constant [2 x i8] c"[\00"
@str_bmb_10 = private unnamed_addr constant { ptr, i64, i64 } { ptr @str_data_10, i64 1, i64 1 }
@str_data_11 = private unnamed_addr constant [2 x i8] c",\00"
@str_bmb_11 = private unnamed_addr constant { ptr, i64, i64 } { ptr @str_data_11, i64 1, i64 1 }
@str_data_12 = private unnamed_addr constant [7 x i8] c"{\22id\22:\00"
@str_bmb_12 = private unnamed_addr constant { ptr, i64, i64 } { ptr @str_data_12, i64 6, i64 6 }
@str_data_13 = private unnamed_addr constant [8 x i8] c",\22val\22:\00"
@str_bmb_13 = private unnamed_addr constant { ptr, i64, i64 } { ptr @str_data_13, i64 7, i64 7 }
@str_data_14 = private unnamed_addr constant [2 x i8] c"}\00"
@str_bmb_14 = private unnamed_addr constant { ptr, i64, i64 } { ptr @str_data_14, i64 1, i64 1 }
@str_data_15 = private unnamed_addr constant [2 x i8] c"]\00"
@str_bmb_15 = private unnamed_addr constant { ptr, i64, i64 } { ptr @str_data_15, i64 1, i64 1 }

; Function Attrs: mustprogress nounwind willreturn
declare void @println(i64) local_unnamed_addr #0

; Function Attrs: mustprogress nounwind willreturn
declare i64 @bmb_sb_new() local_unnamed_addr #0

; Function Attrs: mustprogress nounwind willreturn
declare i64 @bmb_sb_push(i64, ptr readonly captures(none)) local_unnamed_addr #0

; Function Attrs: mustprogress nounwind willreturn
declare i64 @bmb_sb_push_int(i64, i64) local_unnamed_addr #0

; Function Attrs: mustprogress nounwind willreturn
declare noalias ptr @bmb_sb_build(i64) local_unnamed_addr #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define range(i64 0, 2) i64 @json_is_ws(i64 %c) local_unnamed_addr #1 {
entry:
  switch i64 %c, label %else_2 [
    i64 32, label %merge_0
    i64 9, label %merge_0
    i64 10, label %merge_0
  ]

else_2:                                           ; preds = %entry
  %_t14_cmp = icmp eq i64 %c, 13
  %_t17 = zext i1 %_t14_cmp to i64
  br label %merge_0

merge_0:                                          ; preds = %entry, %entry, %else_2, %entry
  %_t20 = phi i64 [ 1, %entry ], [ 1, %entry ], [ %_t17, %else_2 ], [ 1, %entry ]
  ret i64 %_t20
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define range(i64 0, 2) i64 @json_is_digit(i64 %c) local_unnamed_addr #1 {
entry:
  %0 = add i64 %c, -48
  %_t61 = icmp ult i64 %0, 10
  %_t9 = zext i1 %_t61 to i64
  ret i64 %_t9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none)
define i64 @json_skip_ws(i64 %s, i64 %pos) local_unnamed_addr #2 {
entry:
  %_t1_str = inttoptr i64 %s to ptr
  %_t1_lp = getelementptr i8, ptr %_t1_str, i64 8
  %_t1 = load i64, ptr %_t1_lp, align 4
  %_t5_cmp.not6 = icmp slt i64 %pos, %_t1
  br i1 %_t5_cmp.not6, label %merge_1.lr.ph, label %exit_0

merge_1.lr.ph:                                    ; preds = %entry
  %_t11_dp = load ptr, ptr %_t1_str, align 8
  br label %merge_1

merge_1:                                          ; preds = %merge_1.lr.ph, %then_2
  %p_2.07 = phi i64 [ %pos, %merge_1.lr.ph ], [ %_t17, %then_2 ]
  %_t11_bp = getelementptr i8, ptr %_t11_dp, i64 %p_2.07
  %_t11_b = load i8, ptr %_t11_bp, align 1
  switch i8 %_t11_b, label %exit_0 [
    i8 32, label %then_2
    i8 9, label %then_2
    i8 10, label %then_2
    i8 13, label %then_2
  ]

then_2:                                           ; preds = %merge_1, %merge_1, %merge_1, %merge_1
  %_t17 = add nsw i64 %p_2.07, 1
  %_t5_cmp.not = icmp slt i64 %_t17, %_t1
  br i1 %_t5_cmp.not, label %merge_1, label %exit_0

exit_0:                                           ; preds = %then_2, %merge_1, %entry
  %p_2.0.lcssa = phi i64 [ %pos, %entry ], [ %p_2.07, %merge_1 ], [ %_t1, %then_2 ]
  ret i64 %p_2.0.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none)
define i64 @json_parse_uint(i64 %s, i64 %pos) local_unnamed_addr #2 {
entry:
  %_t1_str = inttoptr i64 %s to ptr
  %_t1_lp = getelementptr i8, ptr %_t1_str, i64 8
  %_t1 = load i64, ptr %_t1_lp, align 4
  %_t6_cmp.not5 = icmp slt i64 %pos, %_t1
  br i1 %_t6_cmp.not5, label %merge_1.lr.ph, label %exit_0

merge_1.lr.ph:                                    ; preds = %entry
  %_t12_dp = load ptr, ptr %_t1_str, align 8
  br label %merge_1

merge_1:                                          ; preds = %merge_1.lr.ph, %then_2
  %val_3.07 = phi i64 [ 0, %merge_1.lr.ph ], [ %_t23, %then_2 ]
  %p_2.06 = phi i64 [ %pos, %merge_1.lr.ph ], [ %_t27, %then_2 ]
  %_t12_bp = getelementptr i8, ptr %_t12_dp, i64 %p_2.06
  %_t12_b = load i8, ptr %_t12_bp, align 1
  %_t12 = zext i8 %_t12_b to i64
  %0 = add nsw i64 %_t12, -48
  %_t61.i = icmp ugt i64 %0, 9
  br i1 %_t61.i, label %exit_0, label %then_2

then_2:                                           ; preds = %merge_1
  %_t19 = mul nsw i64 %val_3.07, 10
  %_t23 = add nsw i64 %0, %_t19
  %_t27 = add nsw i64 %p_2.06, 1
  %_t6_cmp.not = icmp slt i64 %_t27, %_t1
  br i1 %_t6_cmp.not, label %merge_1, label %exit_0

exit_0:                                           ; preds = %then_2, %merge_1, %entry
  %p_2.0.lcssa = phi i64 [ %pos, %entry ], [ %p_2.06, %merge_1 ], [ %_t1, %then_2 ]
  %val_3.0.lcssa = phi i64 [ 0, %entry ], [ %val_3.07, %merge_1 ], [ %_t23, %then_2 ]
  %_t34 = mul nsw i64 %p_2.0.lcssa, 1000000
  %_t36 = add nsw i64 %_t34, %val_3.0.lcssa
  ret i64 %_t36
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none)
define i64 @json_parse_str(i64 %s, i64 %pos) local_unnamed_addr #2 {
entry:
  %_t1_str = inttoptr i64 %s to ptr
  %_t1_lp = getelementptr i8, ptr %_t1_str, i64 8
  %_t1 = load i64, ptr %_t1_lp, align 4
  %_t4 = add nsw i64 %pos, 1
  %_t8_cmp.not7 = icmp slt i64 %_t4, %_t1
  br i1 %_t8_cmp.not7, label %merge_1.lr.ph, label %exit_0

merge_1.lr.ph:                                    ; preds = %entry
  %_t14_dp = load ptr, ptr %_t1_str, align 8
  br label %merge_1

merge_1:                                          ; preds = %merge_1.lr.ph, %merge_3
  %p_2.08 = phi i64 [ %_t4, %merge_1.lr.ph ], [ %_t28, %merge_3 ]
  %_t14_bp = getelementptr i8, ptr %_t14_dp, i64 %p_2.08
  %_t14_b = load i8, ptr %_t14_bp, align 1
  switch i8 %_t14_b, label %else_3 [
    i8 34, label %exit_0
    i8 92, label %merge_3
  ]

else_3:                                           ; preds = %merge_1
  br label %merge_3

merge_3:                                          ; preds = %merge_1, %else_3
  %.sink = phi i64 [ 1, %else_3 ], [ 2, %merge_1 ]
  %_t28 = add nsw i64 %p_2.08, %.sink
  %_t8_cmp.not = icmp slt i64 %_t28, %_t1
  br i1 %_t8_cmp.not, label %merge_1, label %exit_0

exit_0:                                           ; preds = %merge_3, %merge_1, %entry
  %p_2.0.lcssa = phi i64 [ %_t4, %entry ], [ %p_2.08, %merge_1 ], [ %_t28, %merge_3 ]
  %0 = mul i64 %p_2.0.lcssa, 10000
  %reass.sub = sub i64 %p_2.0.lcssa, %pos
  %_t40 = add i64 %reass.sub, 9999
  %_t41 = add i64 %_t40, %0
  ret i64 %_t41
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none)
define range(i64 -9223372036854, 9223372036855) i64 @json_count(i64 %s) local_unnamed_addr #3 {
entry:
  %_t2 = tail call i64 @json_count_at(i64 %s, i64 0)
  %_t5 = sdiv i64 %_t2, 1000000
  ret i64 %_t5
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none)
define i64 @json_count_at(i64 %s, i64 %pos_in) local_unnamed_addr #3 {
entry:
  %_t1_str = inttoptr i64 %s to ptr
  %_t1_lp = getelementptr i8, ptr %_t1_str, i64 8
  %_t1 = load i64, ptr %_t1_lp, align 4
  %_t5_cmp.not6.i = icmp slt i64 %pos_in, %_t1
  br i1 %_t5_cmp.not6.i, label %merge_1.lr.ph.i, label %json_skip_ws.exit

merge_1.lr.ph.i:                                  ; preds = %entry
  %_t11_dp.i = load ptr, ptr %_t1_str, align 8
  br label %merge_1.i

merge_1.i:                                        ; preds = %then_2.i, %merge_1.lr.ph.i
  %p_2.07.i = phi i64 [ %pos_in, %merge_1.lr.ph.i ], [ %_t17.i, %then_2.i ]
  %_t11_bp.i = getelementptr i8, ptr %_t11_dp.i, i64 %p_2.07.i
  %_t11_b.i = load i8, ptr %_t11_bp.i, align 1
  switch i8 %_t11_b.i, label %json_skip_ws.exit [
    i8 32, label %then_2.i
    i8 9, label %then_2.i
    i8 10, label %then_2.i
    i8 13, label %then_2.i
  ]

then_2.i:                                         ; preds = %merge_1.i, %merge_1.i, %merge_1.i, %merge_1.i
  %_t17.i = add nsw i64 %p_2.07.i, 1
  %_t5_cmp.not.i = icmp slt i64 %_t17.i, %_t1
  br i1 %_t5_cmp.not.i, label %merge_1.i, label %merge_0

json_skip_ws.exit:                                ; preds = %merge_1.i, %entry
  %p_2.0.lcssa.i = phi i64 [ %pos_in, %entry ], [ %p_2.07.i, %merge_1.i ]
  %_t7_cmp.not = icmp slt i64 %p_2.0.lcssa.i, %_t1
  br i1 %_t7_cmp.not, label %else_0, label %merge_0

else_0:                                           ; preds = %json_skip_ws.exit
  %_t15_dp = load ptr, ptr %_t1_str, align 8
  %_t15_bp = getelementptr i8, ptr %_t15_dp, i64 %p_2.0.lcssa.i
  %_t15_b = load i8, ptr %_t15_bp, align 1
  %_t18_cmp = icmp eq i8 %_t15_b, 34
  br i1 %_t18_cmp, label %then_1, label %else_1

then_1:                                           ; preds = %else_0
  %_t4.i = add nsw i64 %p_2.0.lcssa.i, 1
  %_t8_cmp.not7.i = icmp slt i64 %_t4.i, %_t1
  br i1 %_t8_cmp.not7.i, label %merge_1.i17, label %json_parse_str.exit

merge_1.i17:                                      ; preds = %then_1, %merge_3.i
  %p_2.08.i = phi i64 [ %_t28.i, %merge_3.i ], [ %_t4.i, %then_1 ]
  %_t14_bp.i = getelementptr i8, ptr %_t15_dp, i64 %p_2.08.i
  %_t14_b.i = load i8, ptr %_t14_bp.i, align 1
  switch i8 %_t14_b.i, label %else_3.i [
    i8 34, label %json_parse_str.exit
    i8 92, label %merge_3.i
  ]

else_3.i:                                         ; preds = %merge_1.i17
  br label %merge_3.i

merge_3.i:                                        ; preds = %else_3.i, %merge_1.i17
  %.sink.i = phi i64 [ 1, %else_3.i ], [ 2, %merge_1.i17 ]
  %_t28.i = add nsw i64 %.sink.i, %p_2.08.i
  %_t8_cmp.not.i = icmp slt i64 %_t28.i, %_t1
  br i1 %_t8_cmp.not.i, label %merge_1.i17, label %json_parse_str.exit

json_parse_str.exit:                              ; preds = %merge_1.i17, %merge_3.i, %then_1
  %p_2.0.lcssa.i15 = phi i64 [ %_t4.i, %then_1 ], [ %_t28.i, %merge_3.i ], [ %p_2.08.i, %merge_1.i17 ]
  %0 = mul i64 %p_2.0.lcssa.i15, 10000
  %reass.sub = sub i64 %p_2.0.lcssa.i15, %p_2.0.lcssa.i
  %_t40.i = add i64 %reass.sub, 9999
  %_t41.i = add i64 %_t40.i, %0
  %_t24 = sdiv i64 %_t41.i, 10000
  %_t29 = add nsw i64 %_t24, 1000000
  br label %merge_0

else_1:                                           ; preds = %else_0
  %1 = add i8 %_t15_b, -48
  %_t61.i = icmp ult i8 %1, 10
  %_t36_cmp = icmp eq i8 %_t15_b, 45
  %_t37_i1 = or i1 %_t36_cmp, %_t61.i
  br i1 %_t37_i1, label %then_2, label %else_2

then_2:                                           ; preds = %else_1
  %_t44 = zext i1 %_t36_cmp to i64
  %_t46 = add nsw i64 %p_2.0.lcssa.i, %_t44
  %_t6_cmp.not5.i = icmp slt i64 %_t46, %_t1
  br i1 %_t6_cmp.not5.i, label %merge_1.i23, label %json_parse_uint.exit

merge_1.i23:                                      ; preds = %then_2, %then_2.i24
  %val_3.07.i = phi i64 [ %_t23.i, %then_2.i24 ], [ 0, %then_2 ]
  %p_2.06.i = phi i64 [ %_t27.i, %then_2.i24 ], [ %_t46, %then_2 ]
  %_t12_bp.i = getelementptr i8, ptr %_t15_dp, i64 %p_2.06.i
  %_t12_b.i = load i8, ptr %_t12_bp.i, align 1
  %_t12.i = zext i8 %_t12_b.i to i64
  %2 = add nsw i64 %_t12.i, -48
  %_t61.i.i = icmp ugt i64 %2, 9
  br i1 %_t61.i.i, label %json_parse_uint.exit, label %then_2.i24

then_2.i24:                                       ; preds = %merge_1.i23
  %_t19.i = mul nsw i64 %val_3.07.i, 10
  %_t23.i = add nsw i64 %2, %_t19.i
  %_t27.i = add nsw i64 %p_2.06.i, 1
  %_t6_cmp.not.i = icmp slt i64 %_t27.i, %_t1
  br i1 %_t6_cmp.not.i, label %merge_1.i23, label %json_parse_uint.exit

json_parse_uint.exit:                             ; preds = %merge_1.i23, %then_2.i24, %then_2
  %p_2.0.lcssa.i21 = phi i64 [ %_t46, %then_2 ], [ %_t1, %then_2.i24 ], [ %p_2.06.i, %merge_1.i23 ]
  %val_3.0.lcssa.i = phi i64 [ 0, %then_2 ], [ %_t23.i, %then_2.i24 ], [ %val_3.07.i, %merge_1.i23 ]
  %_t34.i = mul nsw i64 %p_2.0.lcssa.i21, 1000000
  %_t36.i = add nsw i64 %_t34.i, %val_3.0.lcssa.i
  %_t50 = sdiv i64 %_t36.i, 1000000
  %_t55 = add nsw i64 %_t50, 1000000
  br label %merge_0

else_2:                                           ; preds = %else_1
  switch i8 %_t15_b, label %merge_0 [
    i8 116, label %then_4
    i8 102, label %then_5
    i8 110, label %then_6
    i8 91, label %then_7
    i8 123, label %then_8
  ]

then_4:                                           ; preds = %else_2
  %_t65 = add nsw i64 %p_2.0.lcssa.i, 1000004
  br label %merge_0

then_5:                                           ; preds = %else_2
  %_t75 = add nsw i64 %p_2.0.lcssa.i, 1000005
  br label %merge_0

then_6:                                           ; preds = %else_2
  %_t85 = add nsw i64 %p_2.0.lcssa.i, 1000004
  br label %merge_0

then_7:                                           ; preds = %else_2
  %_t91 = tail call i64 @json_count_array(i64 %s, i64 %p_2.0.lcssa.i)
  br label %merge_0

then_8:                                           ; preds = %else_2
  %_t97 = tail call i64 @json_count_object(i64 %s, i64 %p_2.0.lcssa.i)
  br label %merge_0

merge_0:                                          ; preds = %then_2.i, %else_2, %json_skip_ws.exit, %json_parse_str.exit, %then_4, %then_6, %then_8, %then_7, %then_5, %json_parse_uint.exit
  %_t110 = phi i64 [ %_t29, %json_parse_str.exit ], [ %_t55, %json_parse_uint.exit ], [ %_t65, %then_4 ], [ %_t75, %then_5 ], [ %_t85, %then_6 ], [ %_t91, %then_7 ], [ %_t97, %then_8 ], [ %p_2.0.lcssa.i, %json_skip_ws.exit ], [ %p_2.0.lcssa.i, %else_2 ], [ %_t1, %then_2.i ]
  ret i64 %_t110
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none)
define i64 @json_count_array(i64 %s, i64 %pos_in) local_unnamed_addr #3 {
entry:
  %_t1_str = inttoptr i64 %s to ptr
  %_t1_lp = getelementptr i8, ptr %_t1_str, i64 8
  %_t1 = load i64, ptr %_t1_lp, align 4
  %_t6 = add nsw i64 %pos_in, 1
  %_t5_cmp.not6.i = icmp slt i64 %_t6, %_t1
  br i1 %_t5_cmp.not6.i, label %merge_1.lr.ph.i, label %json_skip_ws.exit

merge_1.lr.ph.i:                                  ; preds = %entry
  %_t11_dp.i = load ptr, ptr %_t1_str, align 8
  br label %merge_1.i

merge_1.i:                                        ; preds = %then_2.i, %merge_1.lr.ph.i
  %p_2.07.i = phi i64 [ %_t6, %merge_1.lr.ph.i ], [ %_t17.i, %then_2.i ]
  %_t11_bp.i = getelementptr i8, ptr %_t11_dp.i, i64 %p_2.07.i
  %_t11_b.i = load i8, ptr %_t11_bp.i, align 1
  switch i8 %_t11_b.i, label %json_skip_ws.exit [
    i8 32, label %then_2.i
    i8 9, label %then_2.i
    i8 10, label %then_2.i
    i8 13, label %then_2.i
  ]

then_2.i:                                         ; preds = %merge_1.i, %merge_1.i, %merge_1.i, %merge_1.i
  %_t17.i = add nsw i64 %p_2.07.i, 1
  %_t5_cmp.not.i = icmp slt i64 %_t17.i, %_t1
  br i1 %_t5_cmp.not.i, label %merge_1.i, label %else_0

json_skip_ws.exit:                                ; preds = %merge_1.i, %entry
  %p_2.0.lcssa.i = phi i64 [ %_t6, %entry ], [ %p_2.07.i, %merge_1.i ]
  %_t10_cmp = icmp slt i64 %p_2.0.lcssa.i, %_t1
  br i1 %_t10_cmp, label %then_0, label %else_0

then_0:                                           ; preds = %json_skip_ws.exit
  %_t13_dp = load ptr, ptr %_t1_str, align 8
  %_t13_bp = getelementptr i8, ptr %_t13_dp, i64 %p_2.0.lcssa.i
  %_t13_b = load i8, ptr %_t13_bp, align 1
  %_t15_cmp = icmp eq i8 %_t13_b, 93
  br i1 %_t15_cmp, label %then_1, label %merge_3

then_1:                                           ; preds = %then_0
  %_t22 = add nsw i64 %p_2.0.lcssa.i, 1000001
  br label %merge_0

merge_3:                                          ; preds = %then_0, %then_4
  %pos_3.042 = phi i64 [ %_t57, %then_4 ], [ %p_2.0.lcssa.i, %then_0 ]
  %cnt_2.041 = phi i64 [ %_t37, %then_4 ], [ 1, %then_0 ]
  %_t32 = tail call i64 @json_count_at(i64 %s, i64 %pos_3.042)
  %_t32.frozen = freeze i64 %_t32
  %_t36 = sdiv i64 %_t32.frozen, 1000000
  %_t37 = add nsw i64 %_t36, %cnt_2.041
  %0 = mul i64 %_t36, 1000000
  %_t41.decomposed = sub i64 %_t32.frozen, %0
  %_t5_cmp.not6.i18 = icmp slt i64 %_t41.decomposed, %_t1
  br i1 %_t5_cmp.not6.i18, label %merge_1.i22, label %json_skip_ws.exit29

merge_1.i22:                                      ; preds = %merge_3, %then_2.i26
  %p_2.07.i23 = phi i64 [ %_t17.i27, %then_2.i26 ], [ %_t41.decomposed, %merge_3 ]
  %_t11_bp.i24 = getelementptr i8, ptr %_t13_dp, i64 %p_2.07.i23
  %_t11_b.i25 = load i8, ptr %_t11_bp.i24, align 1
  switch i8 %_t11_b.i25, label %json_skip_ws.exit29 [
    i8 32, label %then_2.i26
    i8 9, label %then_2.i26
    i8 10, label %then_2.i26
    i8 13, label %then_2.i26
  ]

then_2.i26:                                       ; preds = %merge_1.i22, %merge_1.i22, %merge_1.i22, %merge_1.i22
  %_t17.i27 = add nsw i64 %p_2.07.i23, 1
  %_t5_cmp.not.i28 = icmp slt i64 %_t17.i27, %_t1
  br i1 %_t5_cmp.not.i28, label %merge_1.i22, label %exit_2

json_skip_ws.exit29:                              ; preds = %merge_1.i22, %merge_3
  %p_2.0.lcssa.i19 = phi i64 [ %_t41.decomposed, %merge_3 ], [ %p_2.07.i23, %merge_1.i22 ]
  %_t49_cmp = icmp slt i64 %p_2.0.lcssa.i19, %_t1
  br i1 %_t49_cmp, label %then_4, label %exit_2

then_4:                                           ; preds = %json_skip_ws.exit29
  %_t52_bp = getelementptr i8, ptr %_t13_dp, i64 %p_2.0.lcssa.i19
  %_t52_b = load i8, ptr %_t52_bp, align 1
  %_t54_cmp = icmp eq i8 %_t52_b, 44
  %_t57 = add nsw i64 %p_2.0.lcssa.i19, 1
  br i1 %_t54_cmp, label %merge_3, label %exit_2

exit_2:                                           ; preds = %json_skip_ws.exit29, %then_4, %then_2.i26
  %pos_3.148 = phi i64 [ %_t1, %then_2.i26 ], [ %_t57, %then_4 ], [ %p_2.0.lcssa.i19, %json_skip_ws.exit29 ]
  %_t72 = mul nsw i64 %_t37, 1000000
  %_t74 = add nsw i64 %_t72, %pos_3.148
  br label %merge_0

else_0:                                           ; preds = %then_2.i, %json_skip_ws.exit
  %p_2.0.lcssa.i32 = phi i64 [ %p_2.0.lcssa.i, %json_skip_ws.exit ], [ %_t1, %then_2.i ]
  %_t80 = add nsw i64 %p_2.0.lcssa.i32, 1000000
  br label %merge_0

merge_0:                                          ; preds = %then_1, %exit_2, %else_0
  %_t81 = phi i64 [ %_t80, %else_0 ], [ %_t22, %then_1 ], [ %_t74, %exit_2 ]
  ret i64 %_t81
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none)
define i64 @json_count_object(i64 %s, i64 %pos_in) local_unnamed_addr #3 {
entry:
  %_t1_str = inttoptr i64 %s to ptr
  %_t1_lp = getelementptr i8, ptr %_t1_str, i64 8
  %_t1 = load i64, ptr %_t1_lp, align 4
  %_t6 = add nsw i64 %pos_in, 1
  %_t5_cmp.not6.i = icmp slt i64 %_t6, %_t1
  br i1 %_t5_cmp.not6.i, label %merge_1.lr.ph.i, label %json_skip_ws.exit

merge_1.lr.ph.i:                                  ; preds = %entry
  %_t11_dp.i = load ptr, ptr %_t1_str, align 8
  br label %merge_1.i

merge_1.i:                                        ; preds = %then_2.i, %merge_1.lr.ph.i
  %p_2.07.i = phi i64 [ %_t6, %merge_1.lr.ph.i ], [ %_t17.i, %then_2.i ]
  %_t11_bp.i = getelementptr i8, ptr %_t11_dp.i, i64 %p_2.07.i
  %_t11_b.i = load i8, ptr %_t11_bp.i, align 1
  switch i8 %_t11_b.i, label %json_skip_ws.exit [
    i8 32, label %then_2.i
    i8 9, label %then_2.i
    i8 10, label %then_2.i
    i8 13, label %then_2.i
  ]

then_2.i:                                         ; preds = %merge_1.i, %merge_1.i, %merge_1.i, %merge_1.i
  %_t17.i = add nsw i64 %p_2.07.i, 1
  %_t5_cmp.not.i = icmp slt i64 %_t17.i, %_t1
  br i1 %_t5_cmp.not.i, label %merge_1.i, label %else_0

json_skip_ws.exit:                                ; preds = %merge_1.i, %entry
  %p_2.0.lcssa.i = phi i64 [ %_t6, %entry ], [ %p_2.07.i, %merge_1.i ]
  %_t10_cmp = icmp slt i64 %p_2.0.lcssa.i, %_t1
  br i1 %_t10_cmp, label %then_0, label %else_0

then_0:                                           ; preds = %json_skip_ws.exit
  %_t13_dp = load ptr, ptr %_t1_str, align 8
  %_t13_bp = getelementptr i8, ptr %_t13_dp, i64 %p_2.0.lcssa.i
  %_t13_b = load i8, ptr %_t13_bp, align 1
  %_t15_cmp = icmp eq i8 %_t13_b, 125
  br i1 %_t15_cmp, label %then_1, label %merge_3

then_1:                                           ; preds = %then_0
  %_t22 = add nsw i64 %p_2.0.lcssa.i, 1000001
  br label %merge_0

merge_3:                                          ; preds = %then_0, %then_4
  %pos_3.082 = phi i64 [ %_t76, %then_4 ], [ %p_2.0.lcssa.i, %then_0 ]
  %cnt_2.081 = phi i64 [ %_t56, %then_4 ], [ 1, %then_0 ]
  %_t5_cmp.not6.i22 = icmp slt i64 %pos_3.082, %_t1
  br i1 %_t5_cmp.not6.i22, label %merge_1.i26, label %json_skip_ws.exit33

merge_1.i26:                                      ; preds = %merge_3, %then_2.i30
  %p_2.07.i27 = phi i64 [ %_t17.i31, %then_2.i30 ], [ %pos_3.082, %merge_3 ]
  %_t11_bp.i28 = getelementptr i8, ptr %_t13_dp, i64 %p_2.07.i27
  %_t11_b.i29 = load i8, ptr %_t11_bp.i28, align 1
  switch i8 %_t11_b.i29, label %json_skip_ws.exit33 [
    i8 32, label %then_2.i30
    i8 9, label %then_2.i30
    i8 10, label %then_2.i30
    i8 13, label %then_2.i30
  ]

then_2.i30:                                       ; preds = %merge_1.i26, %merge_1.i26, %merge_1.i26, %merge_1.i26
  %_t17.i31 = add nsw i64 %p_2.07.i27, 1
  %_t5_cmp.not.i32 = icmp slt i64 %_t17.i31, %_t1
  br i1 %_t5_cmp.not.i32, label %merge_1.i26, label %json_skip_ws.exit33

json_skip_ws.exit33:                              ; preds = %merge_1.i26, %then_2.i30, %merge_3
  %p_2.0.lcssa.i23 = phi i64 [ %pos_3.082, %merge_3 ], [ %_t1, %then_2.i30 ], [ %p_2.07.i27, %merge_1.i26 ]
  %_t4.i = add nsw i64 %p_2.0.lcssa.i23, 1
  %_t8_cmp.not7.i = icmp slt i64 %_t4.i, %_t1
  br i1 %_t8_cmp.not7.i, label %merge_1.i39, label %json_parse_str.exit

merge_1.i39:                                      ; preds = %json_skip_ws.exit33, %merge_3.i
  %p_2.08.i = phi i64 [ %_t28.i, %merge_3.i ], [ %_t4.i, %json_skip_ws.exit33 ]
  %_t14_bp.i = getelementptr i8, ptr %_t13_dp, i64 %p_2.08.i
  %_t14_b.i = load i8, ptr %_t14_bp.i, align 1
  switch i8 %_t14_b.i, label %else_3.i [
    i8 34, label %json_parse_str.exit
    i8 92, label %merge_3.i
  ]

else_3.i:                                         ; preds = %merge_1.i39
  br label %merge_3.i

merge_3.i:                                        ; preds = %else_3.i, %merge_1.i39
  %.sink.i = phi i64 [ 1, %else_3.i ], [ 2, %merge_1.i39 ]
  %_t28.i = add nsw i64 %.sink.i, %p_2.08.i
  %_t8_cmp.not.i = icmp slt i64 %_t28.i, %_t1
  br i1 %_t8_cmp.not.i, label %merge_1.i39, label %json_parse_str.exit

json_parse_str.exit:                              ; preds = %merge_1.i39, %merge_3.i, %json_skip_ws.exit33
  %p_2.0.lcssa.i37 = phi i64 [ %_t4.i, %json_skip_ws.exit33 ], [ %_t28.i, %merge_3.i ], [ %p_2.08.i, %merge_1.i39 ]
  %0 = mul i64 %p_2.0.lcssa.i37, 10000
  %reass.sub = sub i64 %p_2.0.lcssa.i37, %p_2.0.lcssa.i23
  %_t40.i = add i64 %reass.sub, 9999
  %_t41.i = add i64 %_t40.i, %0
  %_t39 = sdiv i64 %_t41.i, 10000
  %_t5_cmp.not6.i43 = icmp slt i64 %_t39, %_t1
  br i1 %_t5_cmp.not6.i43, label %merge_1.i47, label %json_skip_ws.exit54

merge_1.i47:                                      ; preds = %json_parse_str.exit, %then_2.i51
  %p_2.07.i48 = phi i64 [ %_t17.i52, %then_2.i51 ], [ %_t39, %json_parse_str.exit ]
  %_t11_bp.i49 = getelementptr i8, ptr %_t13_dp, i64 %p_2.07.i48
  %_t11_b.i50 = load i8, ptr %_t11_bp.i49, align 1
  switch i8 %_t11_b.i50, label %json_skip_ws.exit54 [
    i8 32, label %then_2.i51
    i8 9, label %then_2.i51
    i8 10, label %then_2.i51
    i8 13, label %then_2.i51
  ]

then_2.i51:                                       ; preds = %merge_1.i47, %merge_1.i47, %merge_1.i47, %merge_1.i47
  %_t17.i52 = add nsw i64 %p_2.07.i48, 1
  %_t5_cmp.not.i53 = icmp slt i64 %_t17.i52, %_t1
  br i1 %_t5_cmp.not.i53, label %merge_1.i47, label %json_skip_ws.exit54

json_skip_ws.exit54:                              ; preds = %merge_1.i47, %then_2.i51, %json_parse_str.exit
  %p_2.0.lcssa.i44 = phi i64 [ %_t39, %json_parse_str.exit ], [ %_t1, %then_2.i51 ], [ %p_2.07.i48, %merge_1.i47 ]
  %_t47 = add nsw i64 %p_2.0.lcssa.i44, 1
  %_t51 = tail call i64 @json_count_at(i64 %s, i64 %_t47)
  %_t51.frozen = freeze i64 %_t51
  %_t55 = sdiv i64 %_t51.frozen, 1000000
  %_t56 = add nsw i64 %_t55, %cnt_2.081
  %1 = mul i64 %_t55, 1000000
  %_t60.decomposed = sub i64 %_t51.frozen, %1
  %_t5_cmp.not6.i58 = icmp slt i64 %_t60.decomposed, %_t1
  br i1 %_t5_cmp.not6.i58, label %merge_1.i62, label %json_skip_ws.exit69

merge_1.i62:                                      ; preds = %json_skip_ws.exit54, %then_2.i66
  %p_2.07.i63 = phi i64 [ %_t17.i67, %then_2.i66 ], [ %_t60.decomposed, %json_skip_ws.exit54 ]
  %_t11_bp.i64 = getelementptr i8, ptr %_t13_dp, i64 %p_2.07.i63
  %_t11_b.i65 = load i8, ptr %_t11_bp.i64, align 1
  switch i8 %_t11_b.i65, label %json_skip_ws.exit69 [
    i8 32, label %then_2.i66
    i8 9, label %then_2.i66
    i8 10, label %then_2.i66
    i8 13, label %then_2.i66
  ]

then_2.i66:                                       ; preds = %merge_1.i62, %merge_1.i62, %merge_1.i62, %merge_1.i62
  %_t17.i67 = add nsw i64 %p_2.07.i63, 1
  %_t5_cmp.not.i68 = icmp slt i64 %_t17.i67, %_t1
  br i1 %_t5_cmp.not.i68, label %merge_1.i62, label %exit_2

json_skip_ws.exit69:                              ; preds = %merge_1.i62, %json_skip_ws.exit54
  %p_2.0.lcssa.i59 = phi i64 [ %_t60.decomposed, %json_skip_ws.exit54 ], [ %p_2.07.i63, %merge_1.i62 ]
  %_t68_cmp = icmp slt i64 %p_2.0.lcssa.i59, %_t1
  br i1 %_t68_cmp, label %then_4, label %exit_2

then_4:                                           ; preds = %json_skip_ws.exit69
  %_t71_bp = getelementptr i8, ptr %_t13_dp, i64 %p_2.0.lcssa.i59
  %_t71_b = load i8, ptr %_t71_bp, align 1
  %_t73_cmp = icmp eq i8 %_t71_b, 44
  %_t76 = add nsw i64 %p_2.0.lcssa.i59, 1
  br i1 %_t73_cmp, label %merge_3, label %exit_2

exit_2:                                           ; preds = %json_skip_ws.exit69, %then_4, %then_2.i66
  %pos_3.188 = phi i64 [ %_t1, %then_2.i66 ], [ %_t76, %then_4 ], [ %p_2.0.lcssa.i59, %json_skip_ws.exit69 ]
  %_t91 = mul nsw i64 %_t56, 1000000
  %_t93 = add nsw i64 %_t91, %pos_3.188
  br label %merge_0

else_0:                                           ; preds = %then_2.i, %json_skip_ws.exit
  %p_2.0.lcssa.i72 = phi i64 [ %p_2.0.lcssa.i, %json_skip_ws.exit ], [ %_t1, %then_2.i ]
  %_t99 = add nsw i64 %p_2.0.lcssa.i72, 1000000
  br label %merge_0

merge_0:                                          ; preds = %then_1, %exit_2, %else_0
  %_t100 = phi i64 [ %_t99, %else_0 ], [ %_t22, %then_1 ], [ %_t93, %exit_2 ]
  ret i64 %_t100
}

; Function Attrs: mustprogress nounwind
define noundef i64 @bmb_user_main() local_unnamed_addr #4 {
merge_1.peel.next:
  %_t2.i = tail call i64 @json_count_at(i64 ptrtoint (ptr @str_bmb_0 to i64), i64 0)
  %_t5.i = sdiv i64 %_t2.i, 1000000
  %_t2.i13 = tail call i64 @json_count_at(i64 ptrtoint (ptr @str_bmb_1 to i64), i64 0)
  %_t5.i14 = sdiv i64 %_t2.i13, 1000000
  %_t2.i15 = tail call i64 @json_count_at(i64 ptrtoint (ptr @str_bmb_2 to i64), i64 0)
  %_t5.i16 = sdiv i64 %_t2.i15, 1000000
  %_t2.i17 = tail call i64 @json_count_at(i64 ptrtoint (ptr @str_bmb_3 to i64), i64 0)
  %_t5.i18 = sdiv i64 %_t2.i17, 1000000
  %_t2.i19 = tail call i64 @json_count_at(i64 ptrtoint (ptr @str_bmb_4 to i64), i64 0)
  %_t5.i20 = sdiv i64 %_t2.i19, 1000000
  %_t2.i21 = tail call i64 @json_count_at(i64 ptrtoint (ptr @str_bmb_5 to i64), i64 0)
  %_t5.i22 = sdiv i64 %_t2.i21, 1000000
  %_t2.i23 = tail call i64 @json_count_at(i64 ptrtoint (ptr @str_bmb_6 to i64), i64 0)
  %_t5.i24 = sdiv i64 %_t2.i23, 1000000
  %_t2.i25 = tail call i64 @json_count_at(i64 ptrtoint (ptr @str_bmb_7 to i64), i64 0)
  %_t5.i26 = sdiv i64 %_t2.i25, 1000000
  %_t2.i27 = tail call i64 @json_count_at(i64 ptrtoint (ptr @str_bmb_8 to i64), i64 0)
  %_t5.i28 = sdiv i64 %_t2.i27, 1000000
  %_t2.i29 = tail call i64 @json_count_at(i64 ptrtoint (ptr @str_bmb_9 to i64), i64 0)
  %_t5.i30 = sdiv i64 %_t2.i29, 1000000
  tail call void @println(i64 %_t5.i)
  tail call void @println(i64 %_t5.i14)
  tail call void @println(i64 %_t5.i16)
  tail call void @println(i64 %_t5.i18)
  tail call void @println(i64 %_t5.i20)
  tail call void @println(i64 %_t5.i22)
  tail call void @println(i64 %_t5.i24)
  tail call void @println(i64 %_t5.i26)
  tail call void @println(i64 %_t5.i28)
  tail call void @println(i64 %_t5.i30)
  %_t40 = tail call i64 @bmb_sb_new()
  %_t43 = tail call i64 @bmb_sb_push(i64 %_t40, ptr nonnull @str_bmb_10)
  %_t61.peel = tail call i64 @bmb_sb_push(i64 %_t40, ptr nonnull @str_bmb_12)
  %_t64.peel = tail call i64 @bmb_sb_push_int(i64 %_t40, i64 0)
  %_t67.peel = tail call i64 @bmb_sb_push(i64 %_t40, ptr nonnull @str_bmb_13)
  %_t74.peel = tail call i64 @bmb_sb_push_int(i64 %_t40, i64 13)
  %_t77.peel = tail call i64 @bmb_sb_push(i64 %_t40, ptr nonnull @str_bmb_14)
  br label %merge_2

merge_2:                                          ; preds = %merge_1.peel.next, %merge_2
  %i_44.033 = phi i64 [ 1, %merge_1.peel.next ], [ %_t80, %merge_2 ]
  %_t56 = tail call i64 @bmb_sb_push(i64 %_t40, ptr nonnull @str_bmb_11)
  %_t61 = tail call i64 @bmb_sb_push(i64 %_t40, ptr nonnull @str_bmb_12)
  %_t64 = tail call i64 @bmb_sb_push_int(i64 %_t40, i64 %i_44.033)
  %_t67 = tail call i64 @bmb_sb_push(i64 %_t40, ptr nonnull @str_bmb_13)
  %_t71 = mul nuw nsw i64 %i_44.033, 7
  %_t73 = add nuw nsw i64 %_t71, 13
  %_t74 = tail call i64 @bmb_sb_push_int(i64 %_t40, i64 %_t73)
  %_t77 = tail call i64 @bmb_sb_push(i64 %_t40, ptr nonnull @str_bmb_14)
  %_t80 = add nuw nsw i64 %i_44.033, 1
  %_t47_cmp = icmp samesign ugt i64 %i_44.033, 9998
  br i1 %_t47_cmp, label %exit_0, label %merge_2, !llvm.loop !0

exit_0:                                           ; preds = %merge_2
  %_t85 = tail call i64 @bmb_sb_push(i64 %_t40, ptr nonnull @str_bmb_15)
  %_t87_ptr = tail call ptr @bmb_sb_build(i64 %_t40)
  %_t87 = ptrtoint ptr %_t87_ptr to i64
  %_t2.i31 = tail call i64 @json_count_at(i64 %_t87, i64 0)
  %_t5.i32 = sdiv i64 %_t2.i31, 1000000
  %0 = mul nsw i64 %_t5.i32, 100
  tail call void @println(i64 %0)
  ret i64 0
}

attributes #0 = { mustprogress nounwind willreturn }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none) }
attributes #4 = { mustprogress nounwind }

!0 = distinct !{!0, !1}
!1 = !{!"llvm.loop.peeled.count", i32 1}
