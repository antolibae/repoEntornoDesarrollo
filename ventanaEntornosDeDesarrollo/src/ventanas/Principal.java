package ventanas;

import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JTextField;
import javax.swing.text.html.CSS;

import java.awt.BorderLayout;
import java.awt.Color;
import javax.swing.JTextArea;
import java.awt.SystemColor;
import java.awt.Font;
import javax.swing.JList;
import java.awt.Choice;
import java.awt.TextField;
import javax.swing.JRadioButton;
import javax.swing.JButton;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;
import javax.swing.UIManager;
import javax.swing.JLabel;

public class Principal {

	private JFrame frame;
	private JTextField textField;
	private JTextField textField_1;
	private Choice choice;

	/**
	 * Launch the application.
	 * Método principal
	 * Iniciamos go!!!
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					Principal window = new Principal();
					window.frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	/**
	 * Create the application.
	 */
	public Principal() {
		initialize();
	}

	/**
	 * Initialize the contents of the frame.
	 */
	private void initialize() {
		frame = new JFrame();
		frame.setBounds(100, 100, 450, 300);
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		frame.getContentPane().setLayout(null);
		
		textField = new JTextField();
		textField.setBounds(234, 44, 86, 20);
		frame.getContentPane().add(textField);
		textField.setColumns(10);
		
		textField_1 = new JTextField();
		textField_1.setColumns(10);
		textField_1.setBounds(234, 85, 86, 20);
		frame.getContentPane().add(textField_1);
		
		choice = new Choice();
		choice.setFont(new Font("Arial", Font.PLAIN, 12));
		choice.setBackground(Color.LIGHT_GRAY);
		choice.setForeground(Color.BLACK);
		choice.setBounds(234, 123, 86, 20);
		frame.getContentPane().add(choice);
		
		JRadioButton rdbtntlf = new JRadioButton("Teléfono");
		rdbtntlf.setBounds(234, 153, 109, 23);
		frame.getContentPane().add(rdbtntlf);
		
		JRadioButton rdbtnEmail = new JRadioButton("e-mail");
		rdbtnEmail.setBounds(234, 179, 109, 23);
		frame.getContentPane().add(rdbtnEmail);
		
		JButton btnNewButton = new JButton("GUARDAR");
		btnNewButton.setBackground(SystemColor.menu);
		btnNewButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
			}
		});
		btnNewButton.setBounds(200, 216, 94, 23);
		frame.getContentPane().add(btnNewButton);
		
		JLabel lblNewLabel = new JLabel("NUEVO USUARIO");
		lblNewLabel.setFont(new Font("Arial Black", Font.PLAIN, 16));
		lblNewLabel.setBounds(135, 19, 169, 14);
		frame.getContentPane().add(lblNewLabel);
		
		JLabel lblNewLabel_1 = new JLabel("Nombre:");
		lblNewLabel_1.setFont(new Font("Arial", Font.PLAIN, 12));
		lblNewLabel_1.setBounds(105, 47, 57, 14);
		frame.getContentPane().add(lblNewLabel_1);
		
		JLabel lblNewLabel_1_1 = new JLabel("Contraseña:");
		lblNewLabel_1_1.setFont(new Font("Arial", Font.PLAIN, 12));
		lblNewLabel_1_1.setBounds(105, 88, 68, 14);
		frame.getContentPane().add(lblNewLabel_1_1);
		
		JLabel lblNewLabel_1_1_1 = new JLabel("Idioma:");
		lblNewLabel_1_1_1.setFont(new Font("Arial", Font.PLAIN, 12));
		lblNewLabel_1_1_1.setBounds(105, 123, 68, 14);
		frame.getContentPane().add(lblNewLabel_1_1_1);
		
		JLabel lblNewLabel_1_1_2 = new JLabel("Comunicación:");
		lblNewLabel_1_1_2.setFont(new Font("Arial", Font.PLAIN, 12));
		lblNewLabel_1_1_2.setBounds(105, 157, 86, 14);
		frame.getContentPane().add(lblNewLabel_1_1_2);
		choice.add("Español");
		choice.add("Francés");
		choice.add("Inglés");
	}
}
