; ModuleID = bmb_bootstrap
declare void @println(i64) nounwind willreturn
declare void @print_str(ptr nocapture readonly) nounwind willreturn
declare void @println_str(ptr nocapture readonly) nounwind willreturn
declare void @eprint(i64) nounwind willreturn
declare void @eprintln(i64) nounwind willreturn
declare void @eprint_str(ptr nocapture readonly) nounwind willreturn
declare void @eprintln_str(ptr nocapture readonly) nounwind willreturn
declare void @eprint_f64(double) nounwind willreturn
declare void @eprintln_f64(double) nounwind willreturn
declare i64 @bmb_abs(i64) nounwind willreturn memory(none) speculatable
declare i64 @bmb_min(i64, i64) nounwind willreturn memory(none) speculatable
declare i64 @bmb_max(i64, i64) nounwind willreturn memory(none) speculatable
declare i64 @bmb_clamp(i64, i64, i64) nounwind willreturn memory(none) speculatable
declare i64 @bmb_pow(i64, i64) nounwind willreturn memory(none) speculatable
declare noalias ptr @bmb_array_push(ptr nocapture readonly, i64) nounwind willreturn
declare noalias ptr @bmb_array_pop(ptr nocapture readonly) nounwind willreturn
declare noalias ptr @bmb_array_concat(ptr nocapture readonly, ptr nocapture readonly) nounwind willreturn
declare noalias ptr @bmb_array_slice(ptr nocapture readonly, i64, i64) nounwind willreturn
declare i64 @bmb_array_len(ptr nocapture readonly) nounwind willreturn memory(argmem: read) speculatable
declare noalias ptr @bmb_string_new(ptr nocapture readonly, i64) nounwind willreturn
declare noalias ptr @bmb_string_from_cstr(ptr nocapture readonly) nounwind willreturn
declare i64 @bmb_string_len(ptr nocapture readonly) nounwind willreturn memory(argmem: read) speculatable
declare i64 @bmb_string_char_at(ptr nocapture readonly, i64) nounwind willreturn memory(argmem: read) speculatable
declare noalias ptr @bmb_string_slice(ptr nocapture readonly, i64, i64) nounwind willreturn
declare noalias ptr @bmb_string_concat(ptr nocapture readonly, ptr nocapture readonly) nounwind willreturn
declare noalias ptr @bmb_string_concat3(ptr nocapture readonly, ptr nocapture readonly, ptr nocapture readonly) nounwind willreturn
declare noalias ptr @bmb_string_concat5(ptr nocapture readonly, ptr nocapture readonly, ptr nocapture readonly, ptr nocapture readonly, ptr nocapture readonly) nounwind willreturn
declare noalias ptr @bmb_string_concat7(ptr nocapture readonly, ptr nocapture readonly, ptr nocapture readonly, ptr nocapture readonly, ptr nocapture readonly, ptr nocapture readonly, ptr nocapture readonly) nounwind willreturn
declare i64 @bmb_string_eq(ptr nocapture readonly, ptr nocapture readonly) nounwind willreturn memory(argmem: read)
declare i64 @bmb_string_cmp(ptr nocapture readonly, ptr nocapture readonly) nounwind willreturn memory(argmem: read)
declare i64 @bmb_string_hash(ptr nocapture readonly) nounwind willreturn memory(argmem: read) speculatable
declare i64 @bmb_string_starts_with(ptr nocapture readonly, ptr nocapture readonly) nounwind willreturn memory(argmem: read) speculatable
declare i64 @bmb_string_ends_with(ptr nocapture readonly, ptr nocapture readonly) nounwind willreturn memory(argmem: read) speculatable
declare i64 @bmb_string_contains(ptr nocapture readonly, ptr nocapture readonly) nounwind willreturn memory(argmem: read) speculatable
declare i64 @bmb_string_index_of(ptr nocapture readonly, ptr nocapture readonly) nounwind willreturn memory(argmem: read) speculatable
declare noalias ptr @bmb_string_trim(ptr nocapture readonly) nounwind willreturn
declare noalias ptr @bmb_string_replace(ptr nocapture readonly, ptr nocapture readonly, ptr nocapture readonly) nounwind willreturn
declare noalias ptr @bmb_string_to_upper(ptr nocapture readonly) nounwind willreturn
declare noalias ptr @bmb_string_to_lower(ptr nocapture readonly) nounwind willreturn
declare noalias ptr @bmb_string_repeat(ptr nocapture readonly, i64) nounwind willreturn
declare i64 @bmb_string_is_empty(ptr nocapture readonly) nounwind willreturn memory(argmem: read) speculatable
declare i64 @bmb_string_count(ptr nocapture readonly, ptr nocapture readonly) nounwind willreturn memory(argmem: read)
declare noalias ptr @bmb_string_reverse(ptr nocapture readonly) nounwind willreturn
declare noalias ptr @bmb_string_pad_left(ptr nocapture readonly, i64, i64) nounwind willreturn
declare noalias ptr @bmb_string_pad_right(ptr nocapture readonly, i64, i64) nounwind willreturn
declare i64 @bmb_string_last_index_of(ptr nocapture readonly, ptr nocapture readonly) nounwind willreturn memory(argmem: read)
declare noalias ptr @bmb_chr(i64) nounwind willreturn
declare i64 @bmb_ord(ptr nocapture readonly) nounwind willreturn memory(argmem: read)
declare noalias ptr @bmb_int_to_string(i64) nounwind willreturn
declare noalias ptr @bmb_f64_to_string(double) nounwind willreturn
declare noalias ptr @bmb_to_hex(i64) nounwind willreturn
declare noalias ptr @bmb_to_binary(i64) nounwind willreturn
declare noalias ptr @bmb_to_octal(i64) nounwind willreturn
declare i64 @bmb_parse_int(ptr nocapture readonly) nounwind willreturn
declare double @bmb_parse_f64(ptr nocapture readonly) nounwind willreturn
declare noalias ptr @bmb_fast_i2s(i64) nounwind willreturn
declare i64 @bmb_file_exists(ptr nocapture readonly) nounwind
declare i64 @bmb_file_size(ptr nocapture readonly) nounwind
declare noalias ptr @bmb_read_file(ptr nocapture readonly) nounwind
declare i64 @bmb_write_file(ptr nocapture readonly, ptr nocapture readonly) nounwind
declare i64 @bmb_append_file(ptr nocapture readonly, ptr nocapture readonly) nounwind
declare i64 @write_file_newlines(ptr nocapture readonly, ptr nocapture readonly) nounwind
declare i64 @bmb_sb_new() nounwind willreturn
declare i64 @bmb_sb_push(i64, ptr nocapture readonly) nounwind willreturn
declare i64 @sb_push_range(i64, ptr nocapture readonly, i64, i64) nounwind willreturn
declare i64 @bmb_sb_push_int(i64, i64) nounwind willreturn
declare i64 @bmb_sb_push_char(i64, i64) nounwind willreturn
declare i64 @bmb_sb_push_escaped(i64, ptr nocapture readonly) nounwind willreturn
declare i64 @bmb_sb_len(i64) nounwind willreturn memory(read)
declare noalias ptr @bmb_sb_build(i64) nounwind willreturn
declare i64 @bmb_sb_clear(i64) nounwind willreturn
declare i64 @bmb_sb_contains(i64, ptr nocapture readonly) nounwind willreturn memory(read)
declare i64 @bmb_system(ptr nocapture readonly)
declare void @bmb_exit(i64) noreturn nounwind
declare i64 @bmb_time_ms() nounwind willreturn
declare void @bmb_sleep_ms(i64) nounwind
declare i64 @bmb_random_i64() nounwind
declare void @bmb_random_seed(i64) nounwind
declare noalias ptr @bmb_getenv(ptr nocapture readonly) nounwind
declare noalias ptr @bmb_system_capture(ptr nocapture readonly)
declare i64 @bmb_string_free(ptr) nounwind
declare i64 @bmb_sb_free(i64) nounwind
declare i64 @bmb_arena_mode(i64) nounwind willreturn
declare i64 @bmb_arena_reset() nounwind willreturn
declare i64 @bmb_arena_save() nounwind willreturn
declare i64 @bmb_arena_restore() nounwind willreturn
declare i64 @bmb_arena_usage() nounwind willreturn
declare i64 @arg_count() nounwind willreturn
declare noalias ptr @get_arg(i64) nounwind willreturn
declare void @bmb_panic(ptr nocapture readonly) noreturn nounwind
declare noalias ptr @malloc(i64) nounwind
declare noalias ptr @calloc(i64, i64) nounwind
declare void @free(ptr)
declare double @sqrt(double) nounwind willreturn memory(none) speculatable
declare double @sin(double) nounwind willreturn memory(none) speculatable
declare double @cos(double) nounwind willreturn memory(none) speculatable
declare double @tan(double) nounwind willreturn memory(none) speculatable
declare double @atan(double) nounwind willreturn memory(none) speculatable
declare double @atan2(double, double) nounwind willreturn memory(none) speculatable
declare double @log(double) nounwind willreturn memory(none) speculatable
declare double @log2(double) nounwind willreturn memory(none) speculatable
declare double @log10(double) nounwind willreturn memory(none) speculatable
declare double @exp(double) nounwind willreturn memory(none) speculatable
declare double @fmod(double, double) nounwind willreturn memory(none) speculatable
declare double @pow_f64(double, double) nounwind willreturn memory(none) speculatable
declare void @print_f64(double) nounwind willreturn
declare void @println_f64(double) nounwind willreturn
declare void @bmb_print_i64(i64) nounwind willreturn
declare void @puts_cstr(ptr nocapture readonly) nounwind willreturn
declare void @store_u8(ptr, i64, i64) nounwind willreturn
declare i64 @load_u8(ptr, i64) nounwind willreturn memory(argmem: read)
declare void @store_i64(ptr, i64, i64) nounwind willreturn
declare i64 @load_i64(ptr, i64) nounwind willreturn memory(argmem: read)
declare i64 @char_at(ptr nocapture readonly, i64) nounwind willreturn memory(argmem: read)
declare noalias ptr @hashmap_new() nounwind
declare void @hashmap_insert(ptr, ptr nocapture readonly, i64) nounwind
declare i64 @hashmap_get(ptr, ptr nocapture readonly) nounwind
declare void @hashmap_free(ptr) nounwind
declare i64 @hashmap_remove(ptr, ptr nocapture readonly) nounwind
declare i64 @hashmap_contains(ptr, ptr nocapture readonly) nounwind memory(argmem: read)
declare i64 @hashmap_len(ptr) nounwind memory(argmem: read)
declare noalias ptr @str_hashmap_new() nounwind
declare i64 @str_hashmap_insert(ptr, ptr nocapture readonly, i64) nounwind
declare i64 @str_hashmap_get(ptr, ptr nocapture readonly) nounwind
declare void @str_hashmap_free(ptr) nounwind
declare i64 @str_hashmap_contains(ptr, ptr nocapture readonly) nounwind
declare i64 @str_hashmap_len(ptr) nounwind willreturn
declare i64 @str_hashmap_remove(ptr, ptr nocapture readonly) nounwind
declare i64 @str_hashmap_keys(ptr) nounwind
declare i64 @str_hashmap_values(ptr) nounwind
declare noalias ptr @reg_cached_lookup(ptr, ptr nocapture readonly, i64) nounwind
declare noalias ptr @vec_new() nounwind
declare void @vec_push(ptr, i64) nounwind
declare i64 @vec_get(ptr, i64) nounwind
declare void @vec_set(ptr, i64, i64) nounwind
declare i64 @vec_len(ptr) nounwind memory(argmem: read)
declare void @vec_free(ptr) nounwind
declare void @vec_reverse(ptr) nounwind
declare i64 @vec_contains(ptr, i64) nounwind memory(argmem: read)
declare i64 @vec_index_of(ptr, i64) nounwind memory(argmem: read)
declare void @vec_swap(ptr, i64, i64) nounwind
declare void @vec_sort(ptr) nounwind
declare noalias ptr @vec_with_capacity(i64) nounwind
declare void @vec_clear(ptr) nounwind
declare i64 @sb_println(i64) nounwind
declare i64 @sb_with_capacity(i64) nounwind willreturn
declare double @bmb_f64_floor(double) nounwind willreturn memory(none) speculatable
declare double @bmb_f64_ceil(double) nounwind willreturn memory(none) speculatable
declare double @bmb_f64_round(double) nounwind willreturn memory(none) speculatable
declare double @bmb_f64_sqrt(double) nounwind willreturn memory(none) speculatable
declare double @bmb_f64_abs(double) nounwind willreturn memory(none) speculatable
declare i64 @bmb_f64_is_nan(double) nounwind willreturn memory(none) speculatable
declare double @bmb_f64_min(double, double) nounwind willreturn memory(none) speculatable
declare double @bmb_f64_max(double, double) nounwind willreturn memory(none) speculatable
declare i64 @bmb_f64_to_int(double) nounwind willreturn memory(none) speculatable
declare i64 @bmb_delete_file(ptr) nounwind
declare noalias ptr @bmb_getcwd() nounwind
declare i64 @vec_pop(ptr) nounwind
declare i64 @vec_cap(ptr) nounwind willreturn
declare i64 @bmb_time_ns() nounwind
declare noalias ptr @bmb_exec_output(ptr, ptr) nounwind
declare i64 @bmb_string_split(ptr, ptr) nounwind
declare noalias ptr @bmb_string_join(i64, ptr) nounwind
declare i64 @bmb_sb_push_f64(i64, double) nounwind
declare i64 @bmb_sb_push_hex(i64, i64) nounwind
declare i64 @bmb_sb_push_bool(i64, i64) nounwind
declare i64 @bmb_popcount(i64) nounwind willreturn memory(none) speculatable
declare i64 @bmb_clz(i64) nounwind willreturn memory(none) speculatable
declare i64 @bmb_ctz(i64) nounwind willreturn memory(none) speculatable
declare i64 @bmb_bit_reverse(i64) nounwind willreturn memory(none) speculatable
declare i64 @vec_slice(ptr, i64, i64) nounwind
declare void @vec_extend(ptr, ptr) nounwind
declare i64 @vec_remove(ptr, i64) nounwind
declare void @vec_insert(ptr, i64, i64) nounwind
declare i64 @hashmap_keys(ptr) nounwind
declare i64 @hashmap_values(ptr) nounwind
declare void @vec_dedup(ptr) nounwind
declare void @vec_fill(ptr, i64) nounwind
declare i64 @vec_copy(ptr) nounwind
declare i64 @vec_sum(ptr) nounwind willreturn
declare i64 @strmap_new() nounwind willreturn
declare void @strmap_free(i64) nounwind
declare i64 @strmap_insert(i64, ptr nocapture readonly, i64) nounwind
declare i64 @strmap_get(i64, ptr nocapture readonly) nounwind willreturn memory(argmem: read)
declare i64 @strmap_contains(i64, ptr nocapture readonly) nounwind willreturn memory(argmem: read)
declare i64 @strmap_size(i64) nounwind willreturn memory(argmem: read)
declare i64 @strmap_remove(i64, ptr nocapture readonly) nounwind
declare i64 @strmap_keys(i64) nounwind
declare i64 @strmap_values(i64) nounwind
declare i64 @bmb_read_int() nounwind
declare i64 @vec_min(ptr) nounwind willreturn memory(argmem: read)
declare i64 @vec_max(ptr) nounwind willreturn memory(argmem: read)
declare i64 @vec_product(ptr) nounwind willreturn memory(argmem: read)
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

define i64 @json_is_ws(i64 %c) mustprogress nounwind willreturn nosync {
entry:
  %_t2_cmp = icmp eq i64 %c, 32
  br i1 %_t2_cmp, label %then_0, label %else_0
then_0:
  br label %merge_0
else_0:
  %_t6_cmp = icmp eq i64 %c, 9
  br i1 %_t6_cmp, label %then_1, label %else_1
then_1:
  br label %merge_1
else_1:
  %_t10_cmp = icmp eq i64 %c, 10
  br i1 %_t10_cmp, label %then_2, label %else_2
then_2:
  br label %merge_2
else_2:
  %_t14_cmp = icmp eq i64 %c, 13
  %_t17 = select i1 %_t14_cmp, i64 1, i64 0
  br label %merge_2
merge_2:
  %_t18 = phi i64 [ 1, %then_2 ], [ %_t17, %else_2 ]
  br label %merge_1
merge_1:
  %_t19 = phi i64 [ 1, %then_1 ], [ %_t18, %merge_2 ]
  br label %merge_0
merge_0:
  %_t20 = phi i64 [ 1, %then_0 ], [ %_t19, %merge_1 ]
  ret i64 %_t20
}

define i64 @json_is_digit(i64 %c) mustprogress nounwind willreturn nosync {
entry:
  %_t2_cmp = icmp sge i64 %c, 48
  %_t2 = zext i1 %_t2_cmp to i64
  %_t5_cmp = icmp sle i64 %c, 57
  %_t5 = zext i1 %_t5_cmp to i64
  %_t6 = and i64 %_t2, %_t5
  %_t9_s = trunc i64 %_t6 to i1
  %_t9 = select i1 %_t9_s, i64 1, i64 0
  ret i64 %_t9
}

define i64 @json_skip_ws(i64 %s, i64 %pos) mustprogress nounwind willreturn nosync {
entry:
  %_t1_str = inttoptr i64 %s to ptr
  %_t1_lp = getelementptr {ptr, i64, i64}, ptr %_t1_str, i32 0, i32 1
  %_t1 = load i64, ptr %_t1_lp
  %slen_v0 = alloca i64
  store i64 %_t1, ptr %slen_v0
  %p_2 = alloca i64
  store i64 %pos, ptr %p_2
  br label %loop_0
loop_0:
  %_t3 = load i64, ptr %p_2
  %_t4 = load i64, ptr %slen_v0
  %_t5_cmp = icmp sge i64 %_t3, %_t4
  br i1 %_t5_cmp, label %then_1, label %else_1
then_1:
  br label %exit_0
after_break_2:
  br label %merge_1
else_1:
  br label %merge_1
merge_1:
  %_t8 = phi i64 [ 0, %after_break_2 ], [ 0, %else_1 ]
  %_t10 = load i64, ptr %p_2
  %_t11_str = inttoptr i64 %s to ptr
  %_t11_dpp = getelementptr {ptr, i64, i64}, ptr %_t11_str, i32 0, i32 0
  %_t11_dp = load ptr, ptr %_t11_dpp
  %_t11_bp = getelementptr i8, ptr %_t11_dp, i64 %_t10
  %_t11_b = load i8, ptr %_t11_bp
  %_t11 = zext i8 %_t11_b to i64
  %_t12 = call i64 @json_is_ws(i64 %_t11)
  %_t14_cmp = icmp eq i64 %_t12, 1
  br i1 %_t14_cmp, label %then_2, label %else_2
then_2:
  %_t15 = load i64, ptr %p_2
  %_t17 = add nsw i64 %_t15, 1
  store i64 %_t17, ptr %p_2
  br label %merge_2
else_2:
  br label %exit_0
after_break_3:
  br label %merge_2
merge_2:
  %_t20 = phi i64 [ 0, %then_2 ], [ 0, %after_break_3 ]
  br label %loop_0
exit_0:
  %_t22 = load i64, ptr %p_2
  ret i64 %_t22
}

define i64 @json_parse_uint(i64 %s, i64 %pos) mustprogress nounwind willreturn nosync {
entry:
  %_t1_str = inttoptr i64 %s to ptr
  %_t1_lp = getelementptr {ptr, i64, i64}, ptr %_t1_str, i32 0, i32 1
  %_t1 = load i64, ptr %_t1_lp
  %slen_v0 = alloca i64
  store i64 %_t1, ptr %slen_v0
  %p_2 = alloca i64
  store i64 %pos, ptr %p_2
  %val_3 = alloca i64
  store i64 0, ptr %val_3
  br label %loop_0
loop_0:
  %_t4 = load i64, ptr %p_2
  %_t5 = load i64, ptr %slen_v0
  %_t6_cmp = icmp sge i64 %_t4, %_t5
  br i1 %_t6_cmp, label %then_1, label %else_1
then_1:
  br label %exit_0
after_break_2:
  br label %merge_1
else_1:
  br label %merge_1
merge_1:
  %_t9 = phi i64 [ 0, %after_break_2 ], [ 0, %else_1 ]
  %_t11 = load i64, ptr %p_2
  %_t12_str = inttoptr i64 %s to ptr
  %_t12_dpp = getelementptr {ptr, i64, i64}, ptr %_t12_str, i32 0, i32 0
  %_t12_dp = load ptr, ptr %_t12_dpp
  %_t12_bp = getelementptr i8, ptr %_t12_dp, i64 %_t11
  %_t12_b = load i8, ptr %_t12_bp
  %_t12 = zext i8 %_t12_b to i64
  %c_10 = alloca i64
  store i64 %_t12, ptr %c_10
  %_t13 = load i64, ptr %c_10
  %_t14 = call i64 @json_is_digit(i64 %_t13)
  %_t16_cmp = icmp eq i64 %_t14, 1
  br i1 %_t16_cmp, label %then_2, label %else_2
then_2:
  %_t17 = load i64, ptr %val_3
  %_t19 = mul nsw i64 %_t17, 10
  %_t20 = load i64, ptr %c_10
  %_t22 = sub nsw i64 %_t20, 48
  %_t23 = add nsw i64 %_t19, %_t22
  store i64 %_t23, ptr %val_3
  %_t25 = load i64, ptr %p_2
  %_t27 = add nsw i64 %_t25, 1
  store i64 %_t27, ptr %p_2
  br label %merge_2
else_2:
  br label %exit_0
after_break_3:
  br label %merge_2
merge_2:
  %_t30 = phi i64 [ 0, %then_2 ], [ 0, %after_break_3 ]
  br label %loop_0
exit_0:
  %_t32 = load i64, ptr %p_2
  %_t34 = mul nsw i64 %_t32, 1000000
  %_t35 = load i64, ptr %val_3
  %_t36 = add nsw i64 %_t34, %_t35
  ret i64 %_t36
}

define i64 @json_parse_str(i64 %s, i64 %pos) mustprogress nounwind willreturn nosync {
entry:
  %_t1_str = inttoptr i64 %s to ptr
  %_t1_lp = getelementptr {ptr, i64, i64}, ptr %_t1_str, i32 0, i32 1
  %_t1 = load i64, ptr %_t1_lp
  %slen_v0 = alloca i64
  store i64 %_t1, ptr %slen_v0
  %_t4 = add nsw i64 %pos, 1
  %p_2 = alloca i64
  store i64 %_t4, ptr %p_2
  %_t5 = load i64, ptr %p_2
  %start_v5 = alloca i64
  store i64 %_t5, ptr %start_v5
  br label %loop_0
loop_0:
  %_t6 = load i64, ptr %p_2
  %_t7 = load i64, ptr %slen_v0
  %_t8_cmp = icmp sge i64 %_t6, %_t7
  br i1 %_t8_cmp, label %then_1, label %else_1
then_1:
  br label %exit_0
after_break_2:
  br label %merge_1
else_1:
  br label %merge_1
merge_1:
  %_t11 = phi i64 [ 0, %after_break_2 ], [ 0, %else_1 ]
  %_t13 = load i64, ptr %p_2
  %_t14_str = inttoptr i64 %s to ptr
  %_t14_dpp = getelementptr {ptr, i64, i64}, ptr %_t14_str, i32 0, i32 0
  %_t14_dp = load ptr, ptr %_t14_dpp
  %_t14_bp = getelementptr i8, ptr %_t14_dp, i64 %_t13
  %_t14_b = load i8, ptr %_t14_bp
  %_t14 = zext i8 %_t14_b to i64
  %c_12 = alloca i64
  store i64 %_t14, ptr %c_12
  %_t15 = load i64, ptr %c_12
  %_t17_cmp = icmp eq i64 %_t15, 34
  br i1 %_t17_cmp, label %then_2, label %else_2
then_2:
  br label %exit_0
after_break_3:
  br label %merge_2
else_2:
  %_t19 = load i64, ptr %c_12
  %_t21_cmp = icmp eq i64 %_t19, 92
  br i1 %_t21_cmp, label %then_3, label %else_3
then_3:
  %_t22 = load i64, ptr %p_2
  %_t24 = add nsw i64 %_t22, 2
  store i64 %_t24, ptr %p_2
  br label %merge_3
else_3:
  %_t26 = load i64, ptr %p_2
  %_t28 = add nsw i64 %_t26, 1
  store i64 %_t28, ptr %p_2
  br label %merge_3
merge_3:
  %_t30 = phi i64 [ 0, %then_3 ], [ 0, %else_3 ]
  br label %merge_2
merge_2:
  %_t31 = phi i64 [ 0, %after_break_3 ], [ %_t30, %merge_3 ]
  br label %loop_0
exit_0:
  %_t33 = load i64, ptr %p_2
  %_t35 = add nsw i64 %_t33, 1
  %_t37 = mul nsw i64 %_t35, 10000
  %_t38 = load i64, ptr %p_2
  %_t39 = load i64, ptr %start_v5
  %_t40 = sub nsw i64 %_t38, %_t39
  %_t41 = add nsw i64 %_t37, %_t40
  ret i64 %_t41
}

define i64 @json_count(i64 %s) mustprogress nounwind willreturn nosync {
entry:
  %_t2 = call i64 @json_count_at(i64 %s, i64 0)
  %r_v0 = alloca i64
  store i64 %_t2, ptr %r_v0
  %_t3 = load i64, ptr %r_v0
  %_t5 = sdiv i64 %_t3, 1000000
  ret i64 %_t5
}

define i64 @json_count_at(i64 %s, i64 %pos_in) mustprogress nounwind willreturn nosync {
entry:
  %_t1_str = inttoptr i64 %s to ptr
  %_t1_lp = getelementptr {ptr, i64, i64}, ptr %_t1_str, i32 0, i32 1
  %_t1 = load i64, ptr %_t1_lp
  %slen_v0 = alloca i64
  store i64 %_t1, ptr %slen_v0
  %_t4 = call i64 @json_skip_ws(i64 %s, i64 %pos_in)
  %pos_2 = alloca i64
  store i64 %_t4, ptr %pos_2
  %_t5 = load i64, ptr %pos_2
  %_t6 = load i64, ptr %slen_v0
  %_t7_cmp = icmp sge i64 %_t5, %_t6
  br i1 %_t7_cmp, label %then_0, label %else_0
then_0:
  %_t10 = mul nsw i64 0, 1000000
  %_t11 = load i64, ptr %pos_2
  %_t12 = add nsw i64 %_t10, %_t11
  br label %merge_0
else_0:
  %_t14 = load i64, ptr %pos_2
  %_t15_str = inttoptr i64 %s to ptr
  %_t15_dpp = getelementptr {ptr, i64, i64}, ptr %_t15_str, i32 0, i32 0
  %_t15_dp = load ptr, ptr %_t15_dpp
  %_t15_bp = getelementptr i8, ptr %_t15_dp, i64 %_t14
  %_t15_b = load i8, ptr %_t15_bp
  %_t15 = zext i8 %_t15_b to i64
  %c_v13 = alloca i64
  store i64 %_t15, ptr %c_v13
  %_t16 = load i64, ptr %c_v13
  %_t18_cmp = icmp eq i64 %_t16, 34
  br i1 %_t18_cmp, label %then_1, label %else_1
then_1:
  %_t20 = load i64, ptr %pos_2
  %_t21 = call i64 @json_parse_str(i64 %s, i64 %_t20)
  %sr_v19 = alloca i64
  store i64 %_t21, ptr %sr_v19
  %_t22 = load i64, ptr %sr_v19
  %_t24 = sdiv i64 %_t22, 10000
  %new_pos_v22 = alloca i64
  store i64 %_t24, ptr %new_pos_v22
  %_t27 = mul nsw i64 1, 1000000
  %_t28 = load i64, ptr %new_pos_v22
  %_t29 = add nsw i64 %_t27, %_t28
  br label %merge_1
else_1:
  %_t30 = load i64, ptr %c_v13
  %_t31 = call i64 @json_is_digit(i64 %_t30)
  %_t33_cmp = icmp eq i64 %_t31, 1
  %_t33 = zext i1 %_t33_cmp to i64
  %_t34 = load i64, ptr %c_v13
  %_t36_cmp = icmp eq i64 %_t34, 45
  %_t36 = zext i1 %_t36_cmp to i64
  %_t37 = or i64 %_t33, %_t36
  %_t37_i1 = trunc i64 %_t37 to i1
  br i1 %_t37_i1, label %then_2, label %else_2
then_2:
  %_t39 = load i64, ptr %c_v13
  %_t41_cmp = icmp eq i64 %_t39, 45
  br i1 %_t41_cmp, label %then_3, label %else_3
then_3:
  %_t42 = load i64, ptr %pos_2
  %_t44 = add nsw i64 %_t42, 1
  br label %merge_3
else_3:
  %_t45 = load i64, ptr %pos_2
  br label %merge_3
merge_3:
  %_t46 = phi i64 [ %_t44, %then_3 ], [ %_t45, %else_3 ]
  %_t47 = call i64 @json_parse_uint(i64 %s, i64 %_t46)
  %ir_v38 = alloca i64
  store i64 %_t47, ptr %ir_v38
  %_t48 = load i64, ptr %ir_v38
  %_t50 = sdiv i64 %_t48, 1000000
  %new_pos_v48 = alloca i64
  store i64 %_t50, ptr %new_pos_v48
  %_t53 = mul nsw i64 1, 1000000
  %_t54 = load i64, ptr %new_pos_v48
  %_t55 = add nsw i64 %_t53, %_t54
  br label %merge_2
else_2:
  %_t56 = load i64, ptr %c_v13
  %_t58_cmp = icmp eq i64 %_t56, 116
  br i1 %_t58_cmp, label %then_4, label %else_4
then_4:
  %_t61 = mul nsw i64 1, 1000000
  %_t62 = load i64, ptr %pos_2
  %_t64 = add nsw i64 %_t62, 4
  %_t65 = add nsw i64 %_t61, %_t64
  br label %merge_4
else_4:
  %_t66 = load i64, ptr %c_v13
  %_t68_cmp = icmp eq i64 %_t66, 102
  br i1 %_t68_cmp, label %then_5, label %else_5
then_5:
  %_t71 = mul nsw i64 1, 1000000
  %_t72 = load i64, ptr %pos_2
  %_t74 = add nsw i64 %_t72, 5
  %_t75 = add nsw i64 %_t71, %_t74
  br label %merge_5
else_5:
  %_t76 = load i64, ptr %c_v13
  %_t78_cmp = icmp eq i64 %_t76, 110
  br i1 %_t78_cmp, label %then_6, label %else_6
then_6:
  %_t81 = mul nsw i64 1, 1000000
  %_t82 = load i64, ptr %pos_2
  %_t84 = add nsw i64 %_t82, 4
  %_t85 = add nsw i64 %_t81, %_t84
  br label %merge_6
else_6:
  %_t86 = load i64, ptr %c_v13
  %_t88_cmp = icmp eq i64 %_t86, 91
  br i1 %_t88_cmp, label %then_7, label %else_7
then_7:
  %_t90 = load i64, ptr %pos_2
  %_t91 = call i64 @json_count_array(i64 %s, i64 %_t90)
  br label %merge_7
else_7:
  %_t92 = load i64, ptr %c_v13
  %_t94_cmp = icmp eq i64 %_t92, 123
  br i1 %_t94_cmp, label %then_8, label %else_8
then_8:
  %_t96 = load i64, ptr %pos_2
  %_t97 = call i64 @json_count_object(i64 %s, i64 %_t96)
  br label %merge_8
else_8:
  %_t100 = mul nsw i64 0, 1000000
  %_t101 = load i64, ptr %pos_2
  %_t102 = add nsw i64 %_t100, %_t101
  br label %merge_8
merge_8:
  %_t103 = phi i64 [ %_t97, %then_8 ], [ %_t102, %else_8 ]
  br label %merge_7
merge_7:
  %_t104 = phi i64 [ %_t91, %then_7 ], [ %_t103, %merge_8 ]
  br label %merge_6
merge_6:
  %_t105 = phi i64 [ %_t85, %then_6 ], [ %_t104, %merge_7 ]
  br label %merge_5
merge_5:
  %_t106 = phi i64 [ %_t75, %then_5 ], [ %_t105, %merge_6 ]
  br label %merge_4
merge_4:
  %_t107 = phi i64 [ %_t65, %then_4 ], [ %_t106, %merge_5 ]
  br label %merge_2
merge_2:
  %_t108 = phi i64 [ %_t55, %merge_3 ], [ %_t107, %merge_4 ]
  br label %merge_1
merge_1:
  %_t109 = phi i64 [ %_t29, %then_1 ], [ %_t108, %merge_2 ]
  br label %merge_0
merge_0:
  %_t110 = phi i64 [ %_t12, %then_0 ], [ %_t109, %merge_1 ]
  ret i64 %_t110
}

define i64 @json_count_array(i64 %s, i64 %pos_in) mustprogress nounwind willreturn nosync {
entry:
  %_t1_str = inttoptr i64 %s to ptr
  %_t1_lp = getelementptr {ptr, i64, i64}, ptr %_t1_str, i32 0, i32 1
  %_t1 = load i64, ptr %_t1_lp
  %slen_v0 = alloca i64
  store i64 %_t1, ptr %slen_v0
  %cnt_2 = alloca i64
  store i64 1, ptr %cnt_2
  %_t6 = add nsw i64 %pos_in, 1
  %_t7 = call i64 @json_skip_ws(i64 %s, i64 %_t6)
  %pos_3 = alloca i64
  store i64 %_t7, ptr %pos_3
  %_t8 = load i64, ptr %pos_3
  %_t9 = load i64, ptr %slen_v0
  %_t10_cmp = icmp slt i64 %_t8, %_t9
  br i1 %_t10_cmp, label %then_0, label %else_0
then_0:
  %_t12 = load i64, ptr %pos_3
  %_t13_str = inttoptr i64 %s to ptr
  %_t13_dpp = getelementptr {ptr, i64, i64}, ptr %_t13_str, i32 0, i32 0
  %_t13_dp = load ptr, ptr %_t13_dpp
  %_t13_bp = getelementptr i8, ptr %_t13_dp, i64 %_t12
  %_t13_b = load i8, ptr %_t13_bp
  %_t13 = zext i8 %_t13_b to i64
  %_t15_cmp = icmp eq i64 %_t13, 93
  br i1 %_t15_cmp, label %then_1, label %else_1
then_1:
  %_t16 = load i64, ptr %cnt_2
  %_t18 = mul nsw i64 %_t16, 1000000
  %_t19 = load i64, ptr %pos_3
  %_t21 = add nsw i64 %_t19, 1
  %_t22 = add nsw i64 %_t18, %_t21
  br label %merge_1
else_1:
  %done_23 = alloca i64
  store i64 0, ptr %done_23
  br label %loop_2
loop_2:
  %_t24 = load i64, ptr %done_23
  %_t26_cmp = icmp eq i64 %_t24, 1
  br i1 %_t26_cmp, label %then_3, label %else_3
then_3:
  br label %exit_2
after_break_4:
  br label %merge_3
else_3:
  br label %merge_3
merge_3:
  %_t29 = phi i64 [ 0, %after_break_4 ], [ 0, %else_3 ]
  %_t31 = load i64, ptr %pos_3
  %_t32 = call i64 @json_count_at(i64 %s, i64 %_t31)
  %sub_30 = alloca i64
  store i64 %_t32, ptr %sub_30
  %_t33 = load i64, ptr %cnt_2
  %_t34 = load i64, ptr %sub_30
  %_t36 = sdiv i64 %_t34, 1000000
  %_t37 = add nsw i64 %_t33, %_t36
  store i64 %_t37, ptr %cnt_2
  %_t39 = load i64, ptr %sub_30
  %_t41 = srem i64 %_t39, 1000000
  store i64 %_t41, ptr %pos_3
  %_t44 = load i64, ptr %pos_3
  %_t45 = call i64 @json_skip_ws(i64 %s, i64 %_t44)
  store i64 %_t45, ptr %pos_3
  %_t47 = load i64, ptr %pos_3
  %_t48 = load i64, ptr %slen_v0
  %_t49_cmp = icmp slt i64 %_t47, %_t48
  br i1 %_t49_cmp, label %then_4, label %else_4
then_4:
  %_t51 = load i64, ptr %pos_3
  %_t52_str = inttoptr i64 %s to ptr
  %_t52_dpp = getelementptr {ptr, i64, i64}, ptr %_t52_str, i32 0, i32 0
  %_t52_dp = load ptr, ptr %_t52_dpp
  %_t52_bp = getelementptr i8, ptr %_t52_dp, i64 %_t51
  %_t52_b = load i8, ptr %_t52_bp
  %_t52 = zext i8 %_t52_b to i64
  %_t54_cmp = icmp eq i64 %_t52, 44
  br i1 %_t54_cmp, label %then_5, label %else_5
then_5:
  %_t55 = load i64, ptr %pos_3
  %_t57 = add nsw i64 %_t55, 1
  store i64 %_t57, ptr %pos_3
  br label %merge_5
else_5:
  %_t59 = load i64, ptr %pos_3
  %_t61 = add nsw i64 %_t59, 1
  store i64 %_t61, ptr %pos_3
  store i64 1, ptr %done_23
  br label %merge_5
merge_5:
  %_t65 = phi i64 [ 0, %then_5 ], [ 0, %else_5 ]
  br label %merge_4
else_4:
  store i64 1, ptr %done_23
  br label %merge_4
merge_4:
  %_t68 = phi i64 [ %_t65, %merge_5 ], [ 0, %else_4 ]
  br label %loop_2
exit_2:
  %_t70 = load i64, ptr %cnt_2
  %_t72 = mul nsw i64 %_t70, 1000000
  %_t73 = load i64, ptr %pos_3
  %_t74 = add nsw i64 %_t72, %_t73
  br label %merge_1
merge_1:
  %_t75 = phi i64 [ %_t22, %then_1 ], [ %_t74, %exit_2 ]
  br label %merge_0
else_0:
  %_t76 = load i64, ptr %cnt_2
  %_t78 = mul nsw i64 %_t76, 1000000
  %_t79 = load i64, ptr %pos_3
  %_t80 = add nsw i64 %_t78, %_t79
  br label %merge_0
merge_0:
  %_t81 = phi i64 [ %_t75, %merge_1 ], [ %_t80, %else_0 ]
  ret i64 %_t81
}

define i64 @json_count_object(i64 %s, i64 %pos_in) mustprogress nounwind willreturn nosync {
entry:
  %_t1_str = inttoptr i64 %s to ptr
  %_t1_lp = getelementptr {ptr, i64, i64}, ptr %_t1_str, i32 0, i32 1
  %_t1 = load i64, ptr %_t1_lp
  %slen_v0 = alloca i64
  store i64 %_t1, ptr %slen_v0
  %cnt_2 = alloca i64
  store i64 1, ptr %cnt_2
  %_t6 = add nsw i64 %pos_in, 1
  %_t7 = call i64 @json_skip_ws(i64 %s, i64 %_t6)
  %pos_3 = alloca i64
  store i64 %_t7, ptr %pos_3
  %_t8 = load i64, ptr %pos_3
  %_t9 = load i64, ptr %slen_v0
  %_t10_cmp = icmp slt i64 %_t8, %_t9
  br i1 %_t10_cmp, label %then_0, label %else_0
then_0:
  %_t12 = load i64, ptr %pos_3
  %_t13_str = inttoptr i64 %s to ptr
  %_t13_dpp = getelementptr {ptr, i64, i64}, ptr %_t13_str, i32 0, i32 0
  %_t13_dp = load ptr, ptr %_t13_dpp
  %_t13_bp = getelementptr i8, ptr %_t13_dp, i64 %_t12
  %_t13_b = load i8, ptr %_t13_bp
  %_t13 = zext i8 %_t13_b to i64
  %_t15_cmp = icmp eq i64 %_t13, 125
  br i1 %_t15_cmp, label %then_1, label %else_1
then_1:
  %_t16 = load i64, ptr %cnt_2
  %_t18 = mul nsw i64 %_t16, 1000000
  %_t19 = load i64, ptr %pos_3
  %_t21 = add nsw i64 %_t19, 1
  %_t22 = add nsw i64 %_t18, %_t21
  br label %merge_1
else_1:
  %done_23 = alloca i64
  store i64 0, ptr %done_23
  br label %loop_2
loop_2:
  %_t24 = load i64, ptr %done_23
  %_t26_cmp = icmp eq i64 %_t24, 1
  br i1 %_t26_cmp, label %then_3, label %else_3
then_3:
  br label %exit_2
after_break_4:
  br label %merge_3
else_3:
  br label %merge_3
merge_3:
  %_t29 = phi i64 [ 0, %after_break_4 ], [ 0, %else_3 ]
  %_t31 = load i64, ptr %pos_3
  %_t32 = call i64 @json_skip_ws(i64 %s, i64 %_t31)
  store i64 %_t32, ptr %pos_3
  %_t35 = load i64, ptr %pos_3
  %_t36 = call i64 @json_parse_str(i64 %s, i64 %_t35)
  %kr_34 = alloca i64
  store i64 %_t36, ptr %kr_34
  %_t37 = load i64, ptr %kr_34
  %_t39 = sdiv i64 %_t37, 10000
  store i64 %_t39, ptr %pos_3
  %_t42 = load i64, ptr %pos_3
  %_t43 = call i64 @json_skip_ws(i64 %s, i64 %_t42)
  store i64 %_t43, ptr %pos_3
  %_t45 = load i64, ptr %pos_3
  %_t47 = add nsw i64 %_t45, 1
  store i64 %_t47, ptr %pos_3
  %_t50 = load i64, ptr %pos_3
  %_t51 = call i64 @json_count_at(i64 %s, i64 %_t50)
  %sub_49 = alloca i64
  store i64 %_t51, ptr %sub_49
  %_t52 = load i64, ptr %cnt_2
  %_t53 = load i64, ptr %sub_49
  %_t55 = sdiv i64 %_t53, 1000000
  %_t56 = add nsw i64 %_t52, %_t55
  store i64 %_t56, ptr %cnt_2
  %_t58 = load i64, ptr %sub_49
  %_t60 = srem i64 %_t58, 1000000
  store i64 %_t60, ptr %pos_3
  %_t63 = load i64, ptr %pos_3
  %_t64 = call i64 @json_skip_ws(i64 %s, i64 %_t63)
  store i64 %_t64, ptr %pos_3
  %_t66 = load i64, ptr %pos_3
  %_t67 = load i64, ptr %slen_v0
  %_t68_cmp = icmp slt i64 %_t66, %_t67
  br i1 %_t68_cmp, label %then_4, label %else_4
then_4:
  %_t70 = load i64, ptr %pos_3
  %_t71_str = inttoptr i64 %s to ptr
  %_t71_dpp = getelementptr {ptr, i64, i64}, ptr %_t71_str, i32 0, i32 0
  %_t71_dp = load ptr, ptr %_t71_dpp
  %_t71_bp = getelementptr i8, ptr %_t71_dp, i64 %_t70
  %_t71_b = load i8, ptr %_t71_bp
  %_t71 = zext i8 %_t71_b to i64
  %_t73_cmp = icmp eq i64 %_t71, 44
  br i1 %_t73_cmp, label %then_5, label %else_5
then_5:
  %_t74 = load i64, ptr %pos_3
  %_t76 = add nsw i64 %_t74, 1
  store i64 %_t76, ptr %pos_3
  br label %merge_5
else_5:
  %_t78 = load i64, ptr %pos_3
  %_t80 = add nsw i64 %_t78, 1
  store i64 %_t80, ptr %pos_3
  store i64 1, ptr %done_23
  br label %merge_5
merge_5:
  %_t84 = phi i64 [ 0, %then_5 ], [ 0, %else_5 ]
  br label %merge_4
else_4:
  store i64 1, ptr %done_23
  br label %merge_4
merge_4:
  %_t87 = phi i64 [ %_t84, %merge_5 ], [ 0, %else_4 ]
  br label %loop_2
exit_2:
  %_t89 = load i64, ptr %cnt_2
  %_t91 = mul nsw i64 %_t89, 1000000
  %_t92 = load i64, ptr %pos_3
  %_t93 = add nsw i64 %_t91, %_t92
  br label %merge_1
merge_1:
  %_t94 = phi i64 [ %_t22, %then_1 ], [ %_t93, %exit_2 ]
  br label %merge_0
else_0:
  %_t95 = load i64, ptr %cnt_2
  %_t97 = mul nsw i64 %_t95, 1000000
  %_t98 = load i64, ptr %pos_3
  %_t99 = add nsw i64 %_t97, %_t98
  br label %merge_0
merge_0:
  %_t100 = phi i64 [ %_t94, %merge_1 ], [ %_t99, %else_0 ]
  ret i64 %_t100
}

define i64 @bmb_user_main() mustprogress {
entry:
  %_t0 = ptrtoint ptr @str_bmb_0 to i64
  %_t1 = call i64 @json_count(i64 %_t0)
  %t1_v0 = alloca i64
  store i64 %_t1, ptr %t1_v0
  %_t2 = ptrtoint ptr @str_bmb_1 to i64
  %_t3 = call i64 @json_count(i64 %_t2)
  %t2_v2 = alloca i64
  store i64 %_t3, ptr %t2_v2
  %_t4 = ptrtoint ptr @str_bmb_2 to i64
  %_t5 = call i64 @json_count(i64 %_t4)
  %t3_v4 = alloca i64
  store i64 %_t5, ptr %t3_v4
  %_t6 = ptrtoint ptr @str_bmb_3 to i64
  %_t7 = call i64 @json_count(i64 %_t6)
  %t4_v6 = alloca i64
  store i64 %_t7, ptr %t4_v6
  %_t8 = ptrtoint ptr @str_bmb_4 to i64
  %_t9 = call i64 @json_count(i64 %_t8)
  %t5_v8 = alloca i64
  store i64 %_t9, ptr %t5_v8
  %_t10 = ptrtoint ptr @str_bmb_5 to i64
  %_t11 = call i64 @json_count(i64 %_t10)
  %t6_v10 = alloca i64
  store i64 %_t11, ptr %t6_v10
  %_t12 = ptrtoint ptr @str_bmb_6 to i64
  %_t13 = call i64 @json_count(i64 %_t12)
  %t7_v12 = alloca i64
  store i64 %_t13, ptr %t7_v12
  %_t14 = ptrtoint ptr @str_bmb_7 to i64
  %_t15 = call i64 @json_count(i64 %_t14)
  %t8_v14 = alloca i64
  store i64 %_t15, ptr %t8_v14
  %_t16 = ptrtoint ptr @str_bmb_8 to i64
  %_t17 = call i64 @json_count(i64 %_t16)
  %t9_v16 = alloca i64
  store i64 %_t17, ptr %t9_v16
  %_t18 = ptrtoint ptr @str_bmb_9 to i64
  %_t19 = call i64 @json_count(i64 %_t18)
  %t10_v18 = alloca i64
  store i64 %_t19, ptr %t10_v18
  %_t20 = load i64, ptr %t1_v0
  call void @println(i64 %_t20)
  %_p1_v20 = alloca i64
  store i64 0, ptr %_p1_v20
  %_t22 = load i64, ptr %t2_v2
  call void @println(i64 %_t22)
  %_p2_v22 = alloca i64
  store i64 0, ptr %_p2_v22
  %_t24 = load i64, ptr %t3_v4
  call void @println(i64 %_t24)
  %_p3_v24 = alloca i64
  store i64 0, ptr %_p3_v24
  %_t26 = load i64, ptr %t4_v6
  call void @println(i64 %_t26)
  %_p4_v26 = alloca i64
  store i64 0, ptr %_p4_v26
  %_t28 = load i64, ptr %t5_v8
  call void @println(i64 %_t28)
  %_p5_v28 = alloca i64
  store i64 0, ptr %_p5_v28
  %_t30 = load i64, ptr %t6_v10
  call void @println(i64 %_t30)
  %_p6_v30 = alloca i64
  store i64 0, ptr %_p6_v30
  %_t32 = load i64, ptr %t7_v12
  call void @println(i64 %_t32)
  %_p7_v32 = alloca i64
  store i64 0, ptr %_p7_v32
  %_t34 = load i64, ptr %t8_v14
  call void @println(i64 %_t34)
  %_p8_v34 = alloca i64
  store i64 0, ptr %_p8_v34
  %_t36 = load i64, ptr %t9_v16
  call void @println(i64 %_t36)
  %_p9_v36 = alloca i64
  store i64 0, ptr %_p9_v36
  %_t38 = load i64, ptr %t10_v18
  call void @println(i64 %_t38)
  %_p10_v38 = alloca i64
  store i64 0, ptr %_p10_v38
  %_t40 = call i64 @bmb_sb_new()
  %sb_v40 = alloca i64
  store i64 %_t40, ptr %sb_v40
  %_t41 = load i64, ptr %sb_v40
  %_t43 = call i64 @bmb_sb_push(i64 %_t41, ptr @str_bmb_10)
  %_w0_v41 = alloca i64
  store i64 %_t43, ptr %_w0_v41
  %i_44 = alloca i64
  store i64 0, ptr %i_44
  br label %loop_0
loop_0:
  %_t45 = load i64, ptr %i_44
  %_t47_cmp = icmp sge i64 %_t45, 10000
  br i1 %_t47_cmp, label %then_1, label %else_1
then_1:
  br label %exit_0
after_break_2:
  br label %merge_1
else_1:
  br label %merge_1
merge_1:
  %_t50 = phi i64 [ 0, %after_break_2 ], [ 0, %else_1 ]
  %_t51 = load i64, ptr %i_44
  %_t53_cmp = icmp sgt i64 %_t51, 0
  br i1 %_t53_cmp, label %then_2, label %else_2
then_2:
  %_t54 = load i64, ptr %sb_v40
  %_t56 = call i64 @bmb_sb_push(i64 %_t54, ptr @str_bmb_11)
  br label %merge_2
else_2:
  br label %merge_2
merge_2:
  %_t58 = phi i64 [ %_t56, %then_2 ], [ 0, %else_2 ]
  %_c_51 = alloca i64
  store i64 %_t58, ptr %_c_51
  %_t59 = load i64, ptr %sb_v40
  %_t61 = call i64 @bmb_sb_push(i64 %_t59, ptr @str_bmb_12)
  %_w1_59 = alloca i64
  store i64 %_t61, ptr %_w1_59
  %_t62 = load i64, ptr %sb_v40
  %_t63 = load i64, ptr %i_44
  %_t64 = call i64 @bmb_sb_push_int(i64 %_t62, i64 %_t63)
  %_w2_62 = alloca i64
  store i64 %_t64, ptr %_w2_62
  %_t65 = load i64, ptr %sb_v40
  %_t67 = call i64 @bmb_sb_push(i64 %_t65, ptr @str_bmb_13)
  %_w3_65 = alloca i64
  store i64 %_t67, ptr %_w3_65
  %_t68 = load i64, ptr %sb_v40
  %_t69 = load i64, ptr %i_44
  %_t71 = mul nsw i64 %_t69, 7
  %_t73 = add nsw i64 %_t71, 13
  %_t74 = call i64 @bmb_sb_push_int(i64 %_t68, i64 %_t73)
  %_w4_68 = alloca i64
  store i64 %_t74, ptr %_w4_68
  %_t75 = load i64, ptr %sb_v40
  %_t77 = call i64 @bmb_sb_push(i64 %_t75, ptr @str_bmb_14)
  %_w5_75 = alloca i64
  store i64 %_t77, ptr %_w5_75
  %_t78 = load i64, ptr %i_44
  %_t80 = add nsw i64 %_t78, 1
  store i64 %_t80, ptr %i_44
  br label %loop_0
exit_0:
  %_t83 = load i64, ptr %sb_v40
  %_t85 = call i64 @bmb_sb_push(i64 %_t83, ptr @str_bmb_15)
  %_wn_v83 = alloca i64
  store i64 %_t85, ptr %_wn_v83
  %_t86 = load i64, ptr %sb_v40
  %_t87_ptr = call ptr @bmb_sb_build(i64 %_t86)
  %_t87 = ptrtoint ptr %_t87_ptr to i64
  %big_json_v86 = alloca i64
  store i64 %_t87, ptr %big_json_v86
  %total_88 = alloca i64
  store i64 0, ptr %total_88
  %iter_89 = alloca i64
  store i64 0, ptr %iter_89
  br label %loop_3
loop_3:
  %_t90 = load i64, ptr %iter_89
  %_t92_cmp = icmp sge i64 %_t90, 100
  br i1 %_t92_cmp, label %then_4, label %else_4
then_4:
  br label %exit_3
after_break_5:
  br label %merge_4
else_4:
  br label %merge_4
merge_4:
  %_t95 = phi i64 [ 0, %after_break_5 ], [ 0, %else_4 ]
  %_t96 = load i64, ptr %total_88
  %_t97 = load i64, ptr %big_json_v86
  %_t98 = call i64 @json_count(i64 %_t97)
  %_t99 = add nsw i64 %_t96, %_t98
  store i64 %_t99, ptr %total_88
  %_t101 = load i64, ptr %iter_89
  %_t103 = add nsw i64 %_t101, 1
  store i64 %_t103, ptr %iter_89
  br label %loop_3
exit_3:
  %_t106 = load i64, ptr %total_88
  call void @println(i64 %_t106)
  %_pt_v106 = alloca i64
  store i64 0, ptr %_pt_v106
  ret i64 0
}