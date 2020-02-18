INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `email`, `activation_selector`, `activation_code`, `forgotten_password_selector`, `forgotten_password_code`, `forgotten_password_time`, `remember_selector`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES
(2, '127.0.0.1', 'user2', '$2y$12$YFkHlm62dQVrG/rHiZudL.Mccm1HXvGoBa79tnbySpW7OBFIG0rru', 'user2@dsolution.com', NULL, '', NULL, NULL, NULL, NULL, NULL, 1268889823, 1548520249, 1, 'User 2', 'Test', 'DSolution', '0');

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `email`, `activation_selector`, `activation_code`, `forgotten_password_selector`, `forgotten_password_code`, `forgotten_password_time`, `remember_selector`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES
(3, '127.0.0.1', 'user3', '$2y$12$YFkHlm62dQVrG/rHiZudL.Mccm1HXvGoBa79tnbySpW7OBFIG0rru', 'user3@dsolution.com', NULL, '', NULL, NULL, NULL, NULL, NULL, 1268889823, 1548520249, 1, 'User 3', 'Test', 'DSolution', '0');

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `email`, `activation_selector`, `activation_code`, `forgotten_password_selector`, `forgotten_password_code`, `forgotten_password_time`, `remember_selector`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES
(4, '127.0.0.1', 'user4', '$2y$12$YFkHlm62dQVrG/rHiZudL.Mccm1HXvGoBa79tnbySpW7OBFIG0rru', 'user4@dsolution.com', NULL, '', NULL, NULL, NULL, NULL, NULL, 1268889823, 1548520249, 1, 'User 4', 'Test', 'DSolution', '0');

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `email`, `activation_selector`, `activation_code`, `forgotten_password_selector`, `forgotten_password_code`, `forgotten_password_time`, `remember_selector`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES
(5, '127.0.0.1', 'user5', '$2y$12$YFkHlm62dQVrG/rHiZudL.Mccm1HXvGoBa79tnbySpW7OBFIG0rru', 'user5@dsolution.com', NULL, '', NULL, NULL, NULL, NULL, NULL, 1268889823, 1548520249, 1, 'User 5', 'Test', 'DSolution', '0');


INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(2, 2, 2),
(3, 3, 2),
(4, 4, 2),
(5, 5, 2);